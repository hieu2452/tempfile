import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  
  serverElements = [{type:'blueprint',name:'hehe',content:'siuuuu'}];

  onServerAdded(serverData: {serverName: string, serverContent: string }) {
    this.serverElements.push({
      type: 'server',
      name: serverData.serverName,
      content: serverData.serverContent
    });
  }

  onBlueprintAdded(blueprint: {serverName: string, serverContent: string }) {
    this.serverElements.push({
      type: 'blueprint',
      name: blueprint.serverName,
      content: blueprint.serverContent 
    });
  }
}
