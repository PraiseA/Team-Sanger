/*
Javascript file
Prints Name, email, Slack Username and my Biostack values
separated by a comma on the same line

To run the script, run
node Fredrick.js
*/

// Define my name, email, username, and biostack variable

var name = "Fredrick E. Kakembo";
var email = "kakembofredrick@gmail.com";
var s_uname = "@Fredrick";
var biostack = "Genomics";
var twitter = "@FredricoKakembo";

//Calculate Hamming distance, d, between slack username and twitter handle

// Define the Hamming Distance function
// The shorter string should be specified as string2 if unequal lengths
function Hamming_distance(string1, string2) {
	var d = 0;
	// Then Iterate over the shorter string (string2) increamenting d where there is a mismatch
	for (let indx = 0; indx < string2.length; indx++) {
		// Check if the char for string1 and string2 at index indx are not equal
                if (string1.substr(indx,1) != string2.substr(indx,1)) {
                        var d = d+1;
                }
	}
	return d;
}

//Check if twitter and slack are of the same length
if (s_uname.length == twitter.length) {
	var d = Hamming_distance(s_uname, twitter);

// If the Slack is longer than the twitter username
} else if (s_uname.length > twitter.length){
	// get the value of how many char its longer
	let dif = s_uname.length - twitter.length;
	var d = Hamming_distance(s_uname, twitter);
	
	// Add the value of mismatches,d to the length  difference between the two usernames
	var d = d + dif

// If its the twitter that is longer than the slack username
} else if (twitter.length > s_uname.length) {
	// get the value of how many char its longer
        let dif = twitter.length - s_uname.length;
	var d = Hamming_distance(twitter, s_uname);        

        //Add the value of mismatches,d to the length  difference between the two usernames
        var d = d + dif
}


// Print out the values

console.log(name + "," + email + "," + s_uname + "," + biostack + "," +d);
