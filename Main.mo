import Map "mo:base/HashMap";
import Text "mo:base/Text";

// actor -> akıllı sozlesme

actor {

  type Name = Text;
  type Phone = Text;

  type Entry = {
    desc: Text;
    phone: Phone;
  };

 // değişkenleri

 // let -> immutable (değişmez)
 // var -> mutable (değişebilir)
 // const -> ...


 let phonebook = Map.HashMap<Name, Entry>(0, Text.equal, Text.hash);

 // query => sorgular
 // update => geliştirme
 // async() => paralelde yapılıyor

 public func insert(name: Name, entry: Entry): async() {
  phonebook.put(name, entry);
 };

 //loop -> if, when, while, break
 // ? -> string, integer, float, ...


 public query func lookup(name : Name) : async ?Entry {
  phonebook.get(name);
 };

};