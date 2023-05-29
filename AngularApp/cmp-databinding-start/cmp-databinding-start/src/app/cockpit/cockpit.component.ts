import { Component, OnInit, EventEmitter, Output, ViewChild, ElementRef, ViewEncapsulation } from '@angular/core';

@Component({
  selector: 'app-cockpit',
  templateUrl: './cockpit.component.html',
  styleUrls: ['./cockpit.component.css'],
  encapsulation: ViewEncapsulation.Emulated
})
export class CockpitComponent implements OnInit {
  @Output() serverCreated = new EventEmitter<{serverName: string, serverContent: string }>();
  @Output() blueprintCreated = new EventEmitter<{serverName: string, serverContent: string }>();
  newServerName = '';
  newServerContent = '';

  @ViewChild('serverInput') serverInput : ElementRef;
  @ViewChild('serverContentInput') serverContentInput : ElementRef;

  constructor() { }

  ngOnInit(): void {
  }

  onAddServer() {
    
    this.serverCreated.emit({
        serverName: this.serverInput.nativeElement.value, 
        serverContent: this.serverContentInput.nativeElement.value})
    
    // this.serverCreated.emit({
    //   serverName: this.newServerName, 
    //   serverContent: this.newServerContent})
    // this.serverElements.push({
    //   type: 'server',
    //   name: this.newServerName,
    //   content: this.newServerContent
    // });
  }

  onAddBlueprint() {

    this.blueprintCreated.emit({
      serverName: this.serverInput.nativeElement.value, 
      serverContent: this.serverContentInput.nativeElement.value})

    // this.blueprintCreated.emit({
    //   serverName: this.newServerName, 
    //   serverContent: this.newServerContent})
    // this.serverElements.push({
    //   type: 'blueprint',
    //   name: this.newServerName,
    //   content: this.newServerContent
    // });
  }

}
