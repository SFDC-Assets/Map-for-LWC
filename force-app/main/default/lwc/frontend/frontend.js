import { LightningElement, track, api } from 'lwc';
import getData from '@salesforce/apex/Backend.getData';

export default class Frontend extends LightningElement { 

    @api recordId;
    @track currentRecordId;
    @track result;

    connectedCallback() {
        this.currentRecordId = this.recordId;
        this.getStuff();
    }

    getStuff(){        
        getData({recordId: this.recordId}).then(response => {
            this.result = response;
        })
    }

    get ourData(){
        return this.result;
    }

}