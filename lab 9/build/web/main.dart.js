// Generated by DDC, the Dart Development Compiler (to JavaScript).
// Version: 2.19.2 (stable) (Tue Feb 7 18:37:17 2023 +0000) on "linux_x64"
// Module: zapp_user_main
// Flags: soundNullSafety(true), enableAsserts(true)
define('zapp_user_main', ['dart_sdk'], (function load__zapp_user_main(dart_sdk) {
  'use strict';
  const core = dart_sdk.core;
  const async = dart_sdk.async;
  const _interceptors = dart_sdk._interceptors;
  const js = dart_sdk.js;
  const ui = dart_sdk.ui;
  const dart = dart_sdk.dart;
  const dartx = dart_sdk.dartx;
  var $46zapp_entry = Object.create(dart.library);
  var main = Object.create(dart.library);
  var Coffe = Object.create(dart.library);
  var $toString = dartx.toString;
  dart._checkModuleNullSafetyMode(true);
  dart._checkModuleRuntimeTypes(false);
  var T = {
    FutureOfvoid: () => (T.FutureOfvoid = dart.constFn(async.Future$(dart.void)))(),
    VoidToFutureOfvoid: () => (T.VoidToFutureOfvoid = dart.constFn(dart.fnType(T.FutureOfvoid(), [])))(),
    ListOfString: () => (T.ListOfString = dart.constFn(core.List$(core.String)))(),
    ListOfStringTodynamic: () => (T.ListOfStringTodynamic = dart.constFn(dart.fnType(dart.dynamic, [T.ListOfString()])))(),
    JSArrayOfString: () => (T.JSArrayOfString = dart.constFn(_interceptors.JSArray$(core.String)))(),
    dynamicToNull: () => (T.dynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))(),
    VoidToNull: () => (T.VoidToNull = dart.constFn(dart.fnType(core.Null, [])))(),
    ObjectAndStackTraceTovoid: () => (T.ObjectAndStackTraceTovoid = dart.constFn(dart.fnType(dart.void, [core.Object, core.StackTrace])))(),
    ZoneAndZoneDelegateAndZone__Tovoid: () => (T.ZoneAndZoneDelegateAndZone__Tovoid = dart.constFn(dart.fnType(dart.void, [async.Zone, async.ZoneDelegate, async.Zone, core.String])))()
  };
  const CT = Object.create({
    _: () => (C, CT)
  });
  dart.defineLazy(CT, {
    get C0() {
      return C[0] = dart.fn(main.main, T.VoidToFutureOfvoid());
    }
  }, false);
  var C = [void 0];
  var I = ["file:///zapp/project/lib/Coffe.dart"];
  $46zapp_entry.runAppGuarded = function runAppGuarded() {
    async.runZonedGuarded(core.Null, dart.fn(() => {
      if (T.ListOfStringTodynamic().is(C[0] || CT.C0)) {
        T.ListOfStringTodynamic().as(C[0] || CT.C0)(T.JSArrayOfString().of([]));
      } else {
        (C[0] || CT.C0)();
      }
      if (js.context.hasProperty("__notifyFlutterRendered")) {
        async.Future.delayed(new core.Duration.new({milliseconds: 250})).then(core.Null, dart.fn(_ => {
          js.context.callMethod("__notifyFlutterRendered", [false]);
        }, T.dynamicToNull()));
      }
    }, T.VoidToNull()), dart.fn((e, stackTrace) => {
      if (js.context.hasProperty("zappHandlerUserError")) {
        js.context.callMethod("zappHandlerUserError", [e[$toString](), stackTrace.toString()]);
      }
    }, T.ObjectAndStackTraceTovoid()), {zoneSpecification: new async._ZoneSpecification.new({print: dart.fn((self, parent, zone, line) => {
          if (js.context.hasProperty("zappHandlerUserPrint")) {
            js.context.callMethod("zappHandlerUserPrint", [line]);
          }
        }, T.ZoneAndZoneDelegateAndZone__Tovoid())})});
  };
  $46zapp_entry.main = function main$() {
    return async.async(dart.void, function* main() {
      yield ui.webOnlyWarmupEngine({runApp: dart.fn(() => {
          $46zapp_entry.runAppGuarded();
        }, T.VoidToNull()), registerPlugins: dart.fn(() => {
        }, T.VoidToNull())});
    });
  };
  main.main = function main$0() {
    return async.async(dart.void, function* main() {
      let machine = new Coffe.Machine.new(0, 0, 0, 0);
      machine.setResource(100);
      core.print(machine.makingCoffee(25, 10, 10, 10, "Флэт Уайт"));
    });
  };
  var _coffeeBeans$ = dart.privateName(Coffe, "_coffeeBeans");
  var _milk$ = dart.privateName(Coffe, "_milk");
  var _water$ = dart.privateName(Coffe, "_water");
  var _cash$ = dart.privateName(Coffe, "_cash");
  var _isAvailableRessources = dart.privateName(Coffe, "_isAvailableRessources");
  var _subtractResources = dart.privateName(Coffe, "_subtractResources");
  Coffe.Machine = class Machine extends core.Object {
    static ['_#new#tearOff'](_coffeeBeans, _milk, _water, _cash) {
      return new Coffe.Machine.new(_coffeeBeans, _milk, _water, _cash);
    }
    get coffeeBeans() {
      return this[_coffeeBeans$];
    }
    set coffeeBeans(value) {
      return this[_coffeeBeans$] = value;
    }
    get milk() {
      return this[_milk$];
    }
    set milk(value) {
      return this[_milk$] = value;
    }
    get water() {
      return this[_water$];
    }
    set water(value) {
      return this[_water$] = value;
    }
    get cash() {
      return this[_cash$];
    }
    set cash(value) {
      return this[_cash$] = value;
    }
    [_isAvailableRessources](coffee, milk, water, cash) {
      return this[_coffeeBeans$] >= core.num.as(coffee) && this[_milk$] >= core.num.as(milk) && this[_water$] >= core.num.as(water) && this[_cash$] >= core.num.as(cash);
    }
    setResource(value) {
      this[_coffeeBeans$] = this[_coffeeBeans$] + core.num.as(value);
      this[_milk$] = this[_milk$] + core.num.as(value);
      this[_water$] = this[_water$] + core.num.as(value);
      this[_cash$] = this[_cash$] + core.num.as(value);
    }
    [_subtractResources](coffee, milk, water, cash) {
      this[_coffeeBeans$] = this[_coffeeBeans$] - core.num.as(coffee);
      this[_water$] = this[_water$] - core.num.as(water);
      this[_milk$] = this[_milk$] - core.num.as(milk);
      this[_cash$] = this[_cash$] - core.num.as(cash);
    }
    makingCoffee(coffee, milk, water, cash, type) {
      if (this[_isAvailableRessources](coffee, milk, water, cash)) {
        this[_subtractResources](coffee, milk, water, cash);
        return dart.str(type) + " готов!";
      }
      return "Недостаточно ресурсов для приготовления " + dart.str(type) + ".";
    }
  };
  (Coffe.Machine.new = function(_coffeeBeans, _milk, _water, _cash) {
    this[_coffeeBeans$] = _coffeeBeans;
    this[_milk$] = _milk;
    this[_water$] = _water;
    this[_cash$] = _cash;
    ;
  }).prototype = Coffe.Machine.prototype;
  dart.addTypeTests(Coffe.Machine);
  dart.addTypeCaches(Coffe.Machine);
  dart.setMethodSignature(Coffe.Machine, () => ({
    __proto__: dart.getMethods(Coffe.Machine.__proto__),
    [_isAvailableRessources]: dart.fnType(core.bool, [dart.dynamic, dart.dynamic, dart.dynamic, dart.dynamic]),
    setResource: dart.fnType(dart.void, [dart.dynamic]),
    [_subtractResources]: dart.fnType(dart.void, [dart.dynamic, dart.dynamic, dart.dynamic, dart.dynamic]),
    makingCoffee: dart.fnType(core.String, [dart.dynamic, dart.dynamic, dart.dynamic, dart.dynamic, dart.dynamic])
  }));
  dart.setGetterSignature(Coffe.Machine, () => ({
    __proto__: dart.getGetters(Coffe.Machine.__proto__),
    coffeeBeans: core.double,
    milk: core.double,
    water: core.double,
    cash: core.double
  }));
  dart.setSetterSignature(Coffe.Machine, () => ({
    __proto__: dart.getSetters(Coffe.Machine.__proto__),
    coffeeBeans: core.double,
    milk: core.double,
    water: core.double,
    cash: core.double
  }));
  dart.setLibraryUri(Coffe.Machine, I[0]);
  dart.setFieldSignature(Coffe.Machine, () => ({
    __proto__: dart.getFields(Coffe.Machine.__proto__),
    [_coffeeBeans$]: dart.fieldType(core.double),
    [_milk$]: dart.fieldType(core.double),
    [_water$]: dart.fieldType(core.double),
    [_cash$]: dart.fieldType(core.double)
  }));
  dart.trackLibraries("zapp_user_main", {
    "file:///zapp/project/.zapp_entry.dart": $46zapp_entry,
    "file:///zapp/project/lib/main.dart": main,
    "file:///zapp/project/lib/Coffe.dart": Coffe
  }, {
  }, '{"version":3,"sourceRoot":"","sources":["/zapp/project/.zapp_entry.dart","/zapp/project/lib/main.dart","/zapp/project/lib/Coffe.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AA2CI,IA1BF,iCAAgB;AACd,UAAoB,6BAGD;AAF8B,QAA9B,AAAkB,6BAElB,eAF2B;;AAEL,QAAF,CAApB;;AAEnB,UAAO,AAAQ,uBAAY;AAKvB,QAJK,AAAqC,qBAA7B,qCAAuB,uBAAW,QAAC;AAG9C,UAFC,AAAQ,sBAAW,2BAA2B,CAC/C;;;wBAIL,SAAC,GAAG;AACL,UAAO,AAAQ,uBAAY;AAIvB,QAHC,AAAQ,sBAAW,wBAAwB,CAC5C,AAAE,CAAD,eACD,AAAW,UAAD;;2DAGM,yCACb,SAAC,MAAM,QAAQ,MAAM;AAC1B,cAAO,AAAQ,uBAAY;AAC4B,YAAlD,AAAQ,sBAAW,wBAAwB,CAAC,IAAI;;;EAI3D;;AAEiB;AAQd,MAPD,MAAS,gCACC;AACS,UAAf;6CAEe;;IAIrB;;;ACtDiB;AACP,oBAAU,sBAAQ,GAAE,GAAE,GAAE;AACR,MAAxB,AAAQ,OAAD,aAAa;AAEiC,MAArD,WAAM,AAAQ,OAAD,cAAc,IAAG,IAAG,IAAG,IAAI;IAC1C;;;;;;;;;;;;;ACE4B;IAAY;oBACf;AAAU,mCAAe,KAAK;;;AAElC;IAAK;aACR;AAAU,4BAAQ,KAAK;;;AAEnB;IAAM;cACT;AAAU,6BAAS,KAAK;;;AAEtB;IAAK;aACR;AAAU,4BAAQ,KAAK;;6BAEX,QAAO,MAAK,OAAM;AAC5C,YAAO,AAAa,AAA8C,oCAA3C,MAAM,KAAI,AAAM,4BAAG,IAAI,KAAI,AAAO,6BAAG,KAAK,KAAI,AAAM,4BAAE,IAAI;IACnF;gBAEiB;AACM,MAArB,sBAAA,AAAa,kCAAG,KAAK;AACP,MAAd,eAAA,AAAM,2BAAG,KAAK;AACC,MAAf,gBAAA,AAAO,4BAAG,KAAK;AACD,MAAd,eAAA,AAAM,2BAAG,KAAK;IAChB;yBAEwB,QAAO,MAAK,OAAM;AAClB,MAAtB,sBAAA,AAAa,kCAAG,MAAM;AACP,MAAf,gBAAA,AAAO,4BAAG,KAAK;AACF,MAAb,eAAA,AAAM,2BAAG,IAAI;AACA,MAAb,eAAA,AAAM,2BAAG,IAAI;IACf;iBAGoB,QAAO,MAAK,OAAM,MAAK;AACzC,UAAI,6BAAuB,MAAM,EAAE,IAAI,EAAE,KAAK,EAAE,IAAI;AACR,QAA1C,yBAAmB,MAAM,EAAC,IAAI,EAAC,KAAK,EAAC,IAAI;AACzC,cAAuB,UAAb,IAAI,IAAC;;AAEjB,YAAO,AAAkD,uDAAP,IAAI,IAAC;IACzD;;gCAvCa,cAAmB,OAAY,QAAa;IAA5C;IAAmB;IAAY;IAAa;;EAAM","file":"main.js"}');
  // Exports:
  return {
    zapp__project__$46zapp_entry: $46zapp_entry,
    zapp__project__lib__main: main,
    zapp__project__lib__Coffe: Coffe
  };
}));

//# sourceMappingURL=main.js.map
