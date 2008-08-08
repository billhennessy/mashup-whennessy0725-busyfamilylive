<gm:page title="hierarchy test" authenticate="true">
     <h1> Projects </h1>
  <gm:list id="Projects" data="${app}/ProjectData" template="myTemplate"/>
 

  <h1> Project tasks </h1>
    <gm:list id="tasks" data="${Projects}/taskData" template="myTemplate">
      <gm:handleEvent src="Projects" />
    </gm:list>
    
    <gm:template id="myTemplate">
      <table>
        <tbody repeat="true">
          <tr>
            <td><gm:text ref="atom:title"/></td>
            <td><gm:template type="img"/></td>
          </tr>
        </tbody>
      </table>
      <gm:create label="Create new entry"/>
    </gm:template>

</gm:page>
  
 

