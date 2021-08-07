print("Anthony Modupe Mercy")
print("modupemercyanthony@gmail.com")
print("@Mercy")
print("Data science")
print("@Dupe_ ")
def hamming_distance(string1, string2): 
    distance = 0
    L = len(string1)
    for i in range(L):
        if string1[i] != string2[i]:
            distance += 1
    return distance
answer = hamming_distance("Mercy", "Dupe_")
print(answer)
