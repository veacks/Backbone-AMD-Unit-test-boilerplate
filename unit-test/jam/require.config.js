var jam = {
    "packages": [
        {
            "name": "chai",
            "location": "jam/chai",
            "main": "./index"
        },
        {
            "name": "sinon",
            "location": "jam/sinon",
            "main": "sinon.js"
        },
        {
            "name": "underscore",
            "location": "jam/underscore",
            "main": "underscore.js"
        }
    ],
    "version": "0.2.17",
    "shim": {
        "sinon": {
            "exports": "sinon"
        },
        "underscore": {
            "exports": "_"
        }
    }
};

if (typeof require !== "undefined" && require.config) {
    require.config({
    "packages": [
        {
            "name": "chai",
            "location": "jam/chai",
            "main": "./index"
        },
        {
            "name": "sinon",
            "location": "jam/sinon",
            "main": "sinon.js"
        },
        {
            "name": "underscore",
            "location": "jam/underscore",
            "main": "underscore.js"
        }
    ],
    "shim": {
        "sinon": {
            "exports": "sinon"
        },
        "underscore": {
            "exports": "_"
        }
    }
});
}
else {
    var require = {
    "packages": [
        {
            "name": "chai",
            "location": "jam/chai",
            "main": "./index"
        },
        {
            "name": "sinon",
            "location": "jam/sinon",
            "main": "sinon.js"
        },
        {
            "name": "underscore",
            "location": "jam/underscore",
            "main": "underscore.js"
        }
    ],
    "shim": {
        "sinon": {
            "exports": "sinon"
        },
        "underscore": {
            "exports": "_"
        }
    }
};
}

if (typeof exports !== "undefined" && typeof module !== "undefined") {
    module.exports = jam;
}