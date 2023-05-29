import { Component, Input, OnInit, ViewEncapsulation, ViewChild, ElementRef, ContentChild, AfterContentInit} from '@angular/core';

@Component({
  selector: 'app-server-element',
  templateUrl: './server-element.component.html',
  styleUrls: ['./server-element.component.css'],
  
})
export class ServerElementComponent implements OnInit, AfterContentInit {

  @Input('srvElement') element: {type: string, name: string, content: string};
  @ViewChild('header', {static: true}) header: ElementRef;
  @ContentChild('contentParagraph') paragraph: ElementRef;

  

  constructor() { 
    
  }
  ngAfterContentInit(): void {
    console.log(this.paragraph)
  }

  ngOnInit(): void {
  }



}
