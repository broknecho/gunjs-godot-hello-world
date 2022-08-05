# Gunjs and Godot

This project is a proof of concept to connect the Web release version of a Godot engine game and connect it to gunjs using the new JavascriptObject interface.

---

### Demo
[Godot Demo](https://timely-mochi-97e33c.netlify.app/)  
[Gun Hello World](https://gun.eco/docs/Hello-World)

In the Gun Hellow world, you need to change the line:
```js
copy = gun.get('test').get('paste');
```
to
```js
copy = gun.get('godot').get('paste');
```

Try editing the paste input box in the web browser and see it realtime update the godot example.  In the Godot example, you need to put in text and then `ENTER` or click the `Send Text` button.

---

### Project setup

These are the steps needed to get this working in the godot example project:

1. Project -> Export
1. Create a HTML 5 export configuration
1. In the `Head Include` section, add this:
    ```html
    <script src="https://cdn.jsdelivr.net/npm/gun/gun.js"></script>
    ```
1. Check `Experimental Virtual Keyboard` for mobile support of the input
1. Check `Enabled` under Progressive web app

### Godot Project Notes

All code needed is in the `GunTest.gd` File.  You can see the gdscript is almost 1:1 with the javascript hello world equivalent.