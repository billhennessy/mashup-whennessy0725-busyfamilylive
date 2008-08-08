<gm:page title="My App" authenticate="true">
 
<!--    The advanced task list application is a simple task list that stores 
   tasks per user in the ${user} feed. The application uses hierarchy to
     display projects and tasks contained in each of those projects. The date
    picker control is also featured in this app.
    @author: Bill Hennessy-->
  <table style="width:100%" >
    <tr>
      <td style="padding-right:10px;width:200px" valign="top">
        <gm:list id="myList" data="${user}/projects" template="myListTemplate"/>
      </td>
      <td valign="top">
        <div id="taskContainer">
          <gm:list data="${myList}/tasks" template="task"/>
         </div>
      </td>
    </tr>
  </table>
  <gm:template id="myListTemplate">
    <table class="blue-theme" style="width:200px">
      <tr repeat="true">
        <td style="padding:5px; width:160px"><gm:text ref="atom:title"/></td>
        <td style="padding:5px; width:160px"><gm:text ref="atom:description"/><td>

        <td style="padding:5px; width:40px"><gm:editButtons/></td>
      </tr>
      <tfoot>
        <tr>
          <td colspan="2" align="center"><gm:create label="New Task List"/></td>
        </tr>
      </tfoot>
    </table>
  </gm:template>
 
  
 
</gm:page>


