import { Component } from '@angular/core';



@Component({
    selector: 'app-root',
    templateUrl: 'C:/wamp64/www/SenaSoft_G-4/historiapp/validacion_firma.html',
    styleUrls: ['C:/wamp64/www/SenaSoft_G-4/historiapp/validacion_firma.css']
})




export class AppComponent {
    uploadfile(event) {
        if (event.target.files && event.target.files[0]) {
            const file = event.targe.files[0];
            const reader = new FileReader();
            reader.readAsArrayBuffer(file);
            reader.onloadend = (evt) => {
                const result = evt.target.result as ArrayBuffer;
                console.log(result);
            };

        }
    }
}
