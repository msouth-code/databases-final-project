<!-- Do not modify this file. -->

<html>
   <body>

        <!-- (a) -->
        <h2>Select a President to view the artist that ahad the most songs in the Hot 100'sthroughout their administration</h2>
        <form action="TopArtistByPresident.php" method="post">
            <!--president: <input type="text" name="president"> <br/>-->
            <select id="president" name="president">
                <option value="Barack Obama">Barack Obama</option>
                <option value="George W. Bush">George W. Bush</option>
                <option value="Bill Clinton">Bill Clinton</option>
                <option value="George H. W. Bush">George H.W. Bush</option>
            </select>
            <input type="submit">
        </form>

        <br/><br/>

        <!-- (b) -->
        <h2>Select which attribute average you'd like to see for each genre</h2>
        <form action="GenreAvgs.php" method="post">
                <select id="spotifyAttributes" name="spotifyAttributes">
                  <option value="popularity">popularity</option>
		  <option value="energy">energy</option>
		  <option value="danceability">danceability</option>
            </select>
            <input type="submit">
        </form>
        <br/><br/>

        <!-- (c) -->
        <h2> Full Table of Raw Scores</h2>
        <form action="Hw4_ShowAllRawScores.php" method="post">
                password: <input type="text" name="password"> <br/>
                <input type="submit">
        </form>
        <br/><br/>

        <!-- (d) -->
        <h2> Full Table of Percentages with Weighted Averages</h2>
        <form action="Hw4_ShowAllCourseAverages.php" method="post">
                password: <input type="text" name="password"> <br/>
                <input type="submit">
        </form>

   </body>
</html>