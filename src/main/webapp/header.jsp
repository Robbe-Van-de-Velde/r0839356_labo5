<header role="banner">
    <div>
        <h1>Studentenregistratie</h1>
        <nav>
            <ul>
                <li${ ( ( param.page.equals("index") ? ' class="active"' : '') ) }><a href="index.jsp">Home</a></li>
                <li${ ( ( param.page.equals("zoek") ? ' class="active"' : '') ) }><a href="zoekForm.jsp">Zoek een
                    student</a></li>
                <li${ ( ( param.page.equals("form") ? ' class="active"' : '') ) }><a href="studentForm.jsp">Voeg een
                    student toe</a></li>
                <li${ ( ( param.page.equals("overview") ? ' class="active"' : '') ) }><a
                        href="StudentInfo?command=OVERVIEW">Bekijk alle studenten</a></li>
            </ul>
        </nav>
    </div>
    <img alt="Toscane" src="images/student.jpg">
</header>
