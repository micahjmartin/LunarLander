"""
Build a challenge
"""
import random

def LoadStars(fn="STAR_TABLES.agc"):
    """
    Convert the star table into a usable dictionary
    """
    star_dict = {}
    with open(fn) as fil:
        data = fil.readlines()

    for line in data:
        if "# STAR " not in line:
            continue
        lined = line.split()
        star = lined[5]
        num = lined[1]
        if star not in star_dict:
            star_dict[star] = []

        #num = float(num) * 10**2
        num = float(num)
        star_dict[star].append(num)
    return star_dict


def point_distance(star1, star2):
    """
    3d point distance formula
    """
    return (
        (star2[0] - star1[0])**2 +
        (star2[1] - star1[1])**2 +
        (star2[2] - star1[2])**2
    )**(1/2)


def getStarDistances(stars):
    """Get the distance between all the stars.
    Returns a dictionary of star pairs mapped to the distances
    """
    distances = {}
    for i in stars.keys():
        for j in stars.keys():
            if i == j:
                continue
            dist = point_distance(stars[i], stars[j])
            dist = dist*10**2
            dist = int(dist)

            if dist not in distances:
                distances[dist] = []
            distances[dist].append((i, j))
    return distances

def main():
    flag = "ritsec{leap_4_th3_stars}"

    stars = LoadStars()
    distances = getStarDistances(stars)
    
    fil = open("../distances.txt", "w")
    for char in flag:
        if ord(char) not in distances:
            print("Missing distance for '{}'. Please try another character".format(char))
            quit(1)
        
        stars = random.choice(distances[ord(char)])
        fil.write("Star {} => Star {}\n".format(*stars))
    fil.close()
    print("Distances written to 'distances.txt'")


main()