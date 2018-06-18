//## begin module%3A8B241D037D.cm preserve=no
//	  %X% %Q% %Z% %W%
//## end module%3A8B241D037D.cm

//## begin module%3A8B241D037D.cp preserve=no
//	Angelo Fraietta
//## end module%3A8B241D037D.cp

//## Module: e_map%3A8B241D037D; 
//	Contains the files required for the e_tree template
//## Subsystem: <Top Level>
//## Source file: c:\develop\estl\emap.h

//## begin module%3A8B241D037D.additionalIncludes preserve=no
//## end module%3A8B241D037D.additionalIncludes

//## begin module%3A8B241D037D.includes preserve=yes
#ifdef HAL_MAC
#pragma supress_warnings on
#endif

#ifndef _NO_NAMESPACES
#include "memorycache.h"
//## end module%3A8B241D037D.includes


//## Modelname: estr_stl%3A7757A1023B
namespace sm_str {
  template <class K, class T> class map;

} // namespace sm_str

//## begin module%3A8B241D037D.declarations preserve=no
//## end module%3A8B241D037D.declarations

//## begin module%3A8B241D037D.additionalDeclarations preserve=yes
//## end module%3A8B241D037D.additionalDeclarations


namespace sm_str {
  //## begin sm_str%3A7757A1023B.initialDeclarations preserve=yes
#endif // no namespaces
  //## end sm_str%3A7757A1023B.initialDeclarations

  //## begin sm_str::map%3A77556B0331.preface preserve=yes
  //## end sm_str::map%3A77556B0331.preface

  //## Class: e_tree%3A77556B0331; Parameterized Class
  //	This is an implementation of a binary tree ADT.  The
  //	data pointed to are class T
  //## Category: estr_stl%3A7757A1023B
  //## Subsystem: <Top Level>
  //## Persistence: Transient
  //## Cardinality/Multiplicity: n

  //## Uses: its iterator%3A8B53D901D0;map< K,T >::iterator { -> F}
  //## Uses: <unnamed>%3A8C484400A6;map< K,T >::e_tree_node { -> F}

  template <class K, class T	// This is the Type of data pointed to by its nodes
  >
  class map 
  {
    //## begin sm_str::map%3A77556B0331.initialDeclarations preserve=yes
	public:
    //## end sm_str::map%3A77556B0331.initialDeclarations

    class e_tree_node;

    public:
      //## begin sm_str::map::value_type%3A89CB4F02F5.preface preserve=yes
      //## end sm_str::map::value_type%3A89CB4F02F5.preface

      //## Class: value_type%3A89CB4F02F5
      //## Category: estr_stl%3A7757A1023B
      //## Subsystem: <Top Level>
      //## Persistence: Transient
      //## Cardinality/Multiplicity: n

      class value_type 
      {
        //## begin sm_str::map::value_type%3A89CB4F02F5.initialDeclarations preserve=yes
        //## end sm_str::map::value_type%3A89CB4F02F5.initialDeclarations

        public:
          //## Constructors (specified)
            //## Operation: value_type%982106957
            value_type (K key, 	// Key type
            T type	// Object Type
            );

          // Data Members for Class Attributes

            //## Attribute: first%3A89CC09014E
            //## begin sm_str::map::value_type::first%3A89CC09014E.attr preserve=no  public: K {U} key
            K first;
            //## end sm_str::map::value_type::first%3A89CC09014E.attr

            //## Attribute: second%3A89CC1D0341
            //## begin sm_str::map::value_type::second%3A89CC1D0341.attr preserve=no  public: T {U} type
            T second;
            //## end sm_str::map::value_type::second%3A89CC1D0341.attr

          // Additional Public Declarations
            //## begin sm_str::map::value_type%3A89CB4F02F5.public preserve=yes
            //## end sm_str::map::value_type%3A89CB4F02F5.public

        protected:
          // Additional Protected Declarations
            //## begin sm_str::map::value_type%3A89CB4F02F5.protected preserve=yes
            //## end sm_str::map::value_type%3A89CB4F02F5.protected

        private:
          // Additional Private Declarations
            //## begin sm_str::map::value_type%3A89CB4F02F5.private preserve=yes
            //## end sm_str::map::value_type%3A89CB4F02F5.private

        private: //## implementation
          // Additional Implementation Declarations
            //## begin sm_str::map::value_type%3A89CB4F02F5.implementation preserve=yes
            //## end sm_str::map::value_type%3A89CB4F02F5.implementation

      };

      //## begin sm_str::map::value_type%3A89CB4F02F5.postscript preserve=yes
      //## end sm_str::map::value_type%3A89CB4F02F5.postscript

      //## begin sm_str::map::iterator%3A8B459C00F2.preface preserve=yes
      //## end sm_str::map::iterator%3A8B459C00F2.preface

      //## Class: iterator%3A8B459C00F2
      //	An iterator for the Map
      //## Category: estr_stl%3A7757A1023B
      //## Persistence: Transient
      //## Cardinality/Multiplicity: n

      class iterator 
      {
        //## begin sm_str::map::iterator%3A8B459C00F2.initialDeclarations preserve=yes
				friend class map <K,T>;      
        //## end sm_str::map::iterator%3A8B459C00F2.initialDeclarations

        public:
          //## begin sm_str::map::iterator::stack%3A8B50AF022F.preface preserve=yes
          //## end sm_str::map::iterator::stack%3A8B50AF022F.preface

          //## Class: stack%3A8B50AF022F
          //## Category: estr_stl%3A7757A1023B
          //## Persistence: Transient
          //## Cardinality/Multiplicity: n

          class stack 
          {
            //## begin sm_str::map::iterator::stack%3A8B50AF022F.initialDeclarations preserve=yes
            //## end sm_str::map::iterator::stack%3A8B50AF022F.initialDeclarations

            public:
              //## Constructors (generated)
                stack();

                stack(const stack &right);

              //## Constructors (specified)
                //## Operation: stack%982208236
                stack (unsigned max_size);

                //## Operation: stack%982208245
                stack (stack &right);

              //## Assignment Operation (generated)
                const stack & operator=(const stack &right);


              //## Other Operations (specified)
                //## Operation: IsFull%982208238
                bool IsFull ();

                //## Operation: IsEmpty%982208239
                bool IsEmpty ();

                //## Operation: push%982208240
                bool push (e_tree_node* element);

                //## Operation: pop%982208241
                void pop ();

                //## Operation: top%982208242
                map<K,T>::e_tree_node* top ();

              // Additional Public Declarations
                //## begin sm_str::map::iterator::stack%3A8B50AF022F.public preserve=yes
                // we must put this here as Code warrior cannot handle it
				~stack () {delete []_base;}
                //## end sm_str::map::iterator::stack%3A8B50AF022F.public
            protected:
              // Additional Protected Declarations
                //## begin sm_str::map::iterator::stack%3A8B50AF022F.protected preserve=yes
                //## end sm_str::map::iterator::stack%3A8B50AF022F.protected

            private:
              // Additional Private Declarations
                //## begin sm_str::map::iterator::stack%3A8B50AF022F.private preserve=yes
                //## end sm_str::map::iterator::stack%3A8B50AF022F.private

            private: //## implementation
              // Data Members for Class Attributes

                //## Attribute: _top%3A8B50C700D5
                //	The index for the element at top of the Stack. If _top
                //	is zero, then stack is empty.
                //## begin sm_str::map::iterator::stack::_top%3A8B50C700D5.attr preserve=no  private: int {U} -1
                int _top;
                //## end sm_str::map::iterator::stack::_top%3A8B50C700D5.attr

                //## Attribute: _max_size%3A8B50C700DF
                //## begin sm_str::map::iterator::stack::_max_size%3A8B50C700DF.attr preserve=no  private: int {U} 0
                int _max_size;
                //## end sm_str::map::iterator::stack::_max_size%3A8B50C700DF.attr

                //## Attribute: _base%3A8B50C700E0
                //	This is the array of elements that are the stack.
                //## begin sm_str::map::iterator::stack::_base%3A8B50C700E0.attr preserve=no  private: e_tree_node** {U} NULL
                e_tree_node** _base;
                //## end sm_str::map::iterator::stack::_base%3A8B50C700E0.attr

              // Additional Implementation Declarations
                //## begin sm_str::map::iterator::stack%3A8B50AF022F.implementation preserve=yes
                //## end sm_str::map::iterator::stack%3A8B50AF022F.implementation

          };

          //## begin sm_str::map::iterator::stack%3A8B50AF022F.postscript preserve=yes
          //## end sm_str::map::iterator::stack%3A8B50AF022F.postscript

          //## Constructors (generated)
            iterator();

          //## Constructors (specified)
            //## Operation: iterator%982208246
            iterator (e_tree_node* parent);

            //## Operation: iterator%982274610
            iterator (iterator& right);

          //## Assignment Operation (generated)
            const iterator & operator=(const iterator &right);

          //## Equality Operations (generated)
            bool operator==(const iterator &right) const;

            bool operator!=(const iterator &right) const;


          //## Other Operations (specified)
            //## Operation: operator++%982208233
            map<K,T>::iterator & operator ++ ();

            //## Operation: operator*%982208234
            map<K,T>::value_type operator * ();

            //## Operation: set_begin%982208243
            map<K,T>::iterator& set_begin ();

            //## Operation: set_end%982208244
            map<K,T>::iterator& set_end ();

            //## Operation: operator=%982274611
            map<K,T>::iterator& operator = (iterator& right);

        public:
          // Additional Public Declarations
            //## begin sm_str::map::iterator%3A8B459C00F2.public preserve=yes
            //## end sm_str::map::iterator%3A8B459C00F2.public

        protected:
          // Additional Protected Declarations
            //## begin sm_str::map::iterator%3A8B459C00F2.protected preserve=yes
            //## end sm_str::map::iterator%3A8B459C00F2.protected

        private:
          // Additional Private Declarations
            //## begin sm_str::map::iterator%3A8B459C00F2.private preserve=yes
            //## end sm_str::map::iterator%3A8B459C00F2.private

        private: //## implementation
          // Data Members for Class Attributes

            //## Attribute: _end%3A8B529601CC
            //	Says that the iterator has passed the last element
            //## begin sm_str::map::iterator::_end%3A8B529601CC.attr preserve=no  private: bool {U} true
            bool _end;
            //## end sm_str::map::iterator::_end%3A8B529601CC.attr

          // Data Members for Associations

            //## Association: estr_stl::<unnamed>%3A8B51700165
            //## Role: iterator::_previous_node_stack%3A8B517100C6
            //## begin sm_str::map::iterator::_previous_node_stack%3A8B517100C6.role preserve=no  public: sm_str::map< K,T >::iterator::stack { -> 1VFHN}
            stack _previous_node_stack;
            //## end sm_str::map::iterator::_previous_node_stack%3A8B517100C6.role

            //## Association: estr_stl::<unnamed>%3A8C483201B9
            //## Role: iterator::_current_node%3A8C483201BA
            //## begin sm_str::map::iterator::_current_node%3A8C483201BA.role preserve=no  public: sm_str::map< K,T >::e_tree_node { -> 0..1RFHN}
            e_tree_node *_current_node;
            //## end sm_str::map::iterator::_current_node%3A8C483201BA.role

            //## Association: estr_stl::<unnamed>%3A8C485C00B5
            //## Role: iterator::_parent%3A8C485C00B6
            //## begin sm_str::map::iterator::_parent%3A8C485C00B6.role preserve=no  public: sm_str::map< K,T >::e_tree_node { -> 0..1RFHN}
            e_tree_node *_parent;
            //## end sm_str::map::iterator::_parent%3A8C485C00B6.role

          // Additional Implementation Declarations
            //## begin sm_str::map::iterator%3A8B459C00F2.implementation preserve=yes
            //## end sm_str::map::iterator%3A8B459C00F2.implementation

      };

      //## begin sm_str::map::iterator%3A8B459C00F2.postscript preserve=yes
      //## end sm_str::map::iterator%3A8B459C00F2.postscript

      //## begin sm_str::map::e_tree_node%3A8C47970198.preface preserve=yes
      //## end sm_str::map::e_tree_node%3A8C47970198.preface

      //## Class: e_tree_node%3A8C47970198
      //	The tree nodes containing the key and data
      //## Category: estr_stl%3A7757A1023B
      //## Persistence: Transient
      //## Cardinality/Multiplicity: n

      class e_tree_node 
      {
        //## begin sm_str::map::e_tree_node%3A8C47970198.initialDeclarations preserve=yes
        //## end sm_str::map::e_tree_node%3A8C47970198.initialDeclarations

        public:
          //## Constructors (specified)
            //## Operation: e_tree_node%982208247
            e_tree_node (K key, T data);

          //## Storage Management Operations (specified)
            //## Operation: operator new%1028688925
            static void* operator new (size_t size);

            //## Operation: operator delete%1028688926
            static void operator delete (void* mem);


          //## Other Operations (specified)
            //## Operation: size%982208248
            unsigned size () const;

            //## Operation: depth%982208249
            unsigned depth () const;

            //## Operation: begin%982208250
            map<K,T>::e_tree_node* begin ();

            //## Operation: end%982208251
            map<K,T>::e_tree_node* end ();

            //## Operation: delete_children%982208252
            void delete_children ();

            //## Operation: insert%982208253
            map<K,T>::e_tree_node* insert (e_tree_node* new_node);

            //## Operation: remove%982208254
            map<K,T>::e_tree_node* remove (K key, e_tree_node** junk);

            //## Operation: Data%982274608
            T& Data ();

            //## Operation: Key%982274609
            K Key ();

          // Additional Public Declarations
            //## begin sm_str::map::e_tree_node%3A8C47970198.public preserve=yes
            //## end sm_str::map::e_tree_node%3A8C47970198.public

        protected:
          // Additional Protected Declarations
            //## begin sm_str::map::e_tree_node%3A8C47970198.protected preserve=yes
            //## end sm_str::map::e_tree_node%3A8C47970198.protected

        private:

          //## Other Operations (specified)
            //## Operation: singleRotateRight%982208255
            map<K,T>::e_tree_node* singleRotateRight ();

            //## Operation: singleRotateLeft%982208256
            map<K,T>::e_tree_node* singleRotateLeft ();

            //## Operation: balance%982208257
            map<K,T>::e_tree_node* balance ();

            //## Operation: removeLeftmostDescendant%982208258
            map<K,T>::e_tree_node* removeLeftmostDescendant (e_tree_node **child_ptr);

            //## Operation: restoreLeftBalance%982208259
            map<K,T>::e_tree_node* restoreLeftBalance (short oldBf);

            //## Operation: restoreRightBalance%982208260
            map<K,T>::e_tree_node* restoreRightBalance (short oldBf);

          // Additional Private Declarations
            //## begin sm_str::map::e_tree_node%3A8C47970198.private preserve=yes
            //## end sm_str::map::e_tree_node%3A8C47970198.private

        private: //## implementation
          // Data Members for Class Attributes

            //## Attribute: bf%3A8C480F03DF
            //	The balance factor
            //## begin sm_str::map::e_tree_node::bf%3A8C480F03DF.attr preserve=no  private: short {U} 0
            short bf;
            //## end sm_str::map::e_tree_node::bf%3A8C480F03DF.attr

            //## Attribute: _mem_manager%3D508BC803DC
            //## begin sm_str::map::e_tree_node::_mem_manager%3D508BC803DC.attr preserve=no  private: static MemoryCache {V} 
            static MemoryCache _mem_manager;
            //## end sm_str::map::e_tree_node::_mem_manager%3D508BC803DC.attr

          // Data Members for Associations

            //## Association: estr_stl::<unnamed>%3A8C486F0379
            //## Role: e_tree_node::_left_child%3A8C48750241
            //## begin sm_str::map::e_tree_node::_left_child%3A8C48750241.role preserve=no  public: sm_str::map< K,T >::e_tree_node {0..1 -> 0..1RFHN}
            e_tree_node *_left_child;
            //## end sm_str::map::e_tree_node::_left_child%3A8C48750241.role

            //## Association: estr_stl::<unnamed>%3A8C486F0379
            //## Role: e_tree_node::_right_child%3A8C4875022D
            //## begin sm_str::map::e_tree_node::_right_child%3A8C4875022D.role preserve=no  public: sm_str::map< K,T >::e_tree_node {0..1 -> 0..1RFHN}
            e_tree_node *_right_child;
            //## end sm_str::map::e_tree_node::_right_child%3A8C4875022D.role

            //## Association: estr_stl::<unnamed>%3A8C515B0070
            //## Role: e_tree_node::values%3A8C515B0369
            //## begin sm_str::map::e_tree_node::values%3A8C515B0369.role preserve=no  public: sm_str::map< K,T >::value_type { -> 1VFHN}
            value_type values;
            //## end sm_str::map::e_tree_node::values%3A8C515B0369.role

            //## Association: estr_stl::<unnamed>%3A8C483201B9
            //## Role: e_tree_node::<the_iterator>%3A8C483201BB
            //## begin sm_str::map::e_tree_node::<the_iterator>%3A8C483201BB.role preserve=no  public: sm_str::map< K,T >::iterator {0..1 -> RFHN}
            //## end sm_str::map::e_tree_node::<the_iterator>%3A8C483201BB.role

            //## Association: estr_stl::<unnamed>%3A8C4EC7005D
            //## Role: e_tree_node::<e_tree <K,T>>%3A8C4EC803B2
            //## begin sm_str::map::e_tree_node::<e_tree <K,T>>%3A8C4EC803B2.role preserve=no  public: sm_str::map {0..1 -> RFHN}
            //## end sm_str::map::e_tree_node::<e_tree <K,T>>%3A8C4EC803B2.role

          // Additional Implementation Declarations
            //## begin sm_str::map::e_tree_node%3A8C47970198.implementation preserve=yes
            friend class map <K,T>;
            //## end sm_str::map::e_tree_node%3A8C47970198.implementation
          friend class iterator;
      };

      //## begin sm_str::map::e_tree_node%3A8C47970198.postscript preserve=yes
      //## end sm_str::map::e_tree_node%3A8C47970198.postscript

      //## Constructors (generated)
        map();

      //## Destructor (generated)
        ~map();


      //## Other Operations (specified)
        //## Operation: begin%980983538
        map<K,T>::iterator begin () const;

        //## Operation: end%980983539
        map<K,T>::iterator end () const;

        //## Operation: depth%980983540
        unsigned depth () const;

        //## Operation: purge%980983543
        void purge ();

        //## Operation: size%980983544
        unsigned size () const;

        //## Operation: operator[]%982106958
        const T & operator [] (K key);

        //## Operation: insert%982106959
        bool insert (value_type element);

        //## Operation: erase%982106960
        void erase (K key);

        //## Operation: count%982106963
        bool count (K key);

    public:
      // Additional Public Declarations
        //## begin sm_str::map%3A77556B0331.public preserve=yes
        //## end sm_str::map%3A77556B0331.public

    protected:
      // Additional Protected Declarations
        //## begin sm_str::map%3A77556B0331.protected preserve=yes
        //## end sm_str::map%3A77556B0331.protected

    private:

      //## Other Operations (specified)
        //## Operation: find%982106964
        map<K,T>::e_tree_node* find (K key);

      // Additional Private Declarations
        //## begin sm_str::map%3A77556B0331.private preserve=yes
        //## end sm_str::map%3A77556B0331.private

    private: //## implementation
      // Data Members for Associations

        //## Association: estr_stl::<unnamed>%3A8C4EC7005D
        //## Role: map::_root%3A8C4EC80394
        //## begin sm_str::map::_root%3A8C4EC80394.role preserve=no  public: sm_str::map< K,T >::e_tree_node { -> 0..1RFHN}
        e_tree_node *_root;
        //## end sm_str::map::_root%3A8C4EC80394.role

      // Additional Implementation Declarations
        //## begin sm_str::map%3A77556B0331.implementation preserve=yes
        //## end sm_str::map%3A77556B0331.implementation

  };

  //## begin sm_str::map%3A77556B0331.postscript preserve=yes
  //## end sm_str::map%3A77556B0331.postscript

  // Class sm_str::map::value_type 

  //## Operation: value_type%982106957
  //	constructor
  template <class K, class T>
  inline map< K,T >::value_type::value_type (K key, T type)
    //## begin sm_str::map::value_type::value_type%982106957.hasinit preserve=no
        : first(key), second(type)
    //## end sm_str::map::value_type::value_type%982106957.hasinit
    //## begin sm_str::map::value_type::value_type%982106957.initialization preserve=yes
    //## end sm_str::map::value_type::value_type%982106957.initialization
  {
    //## begin sm_str::map::value_type::value_type%982106957.body preserve=yes
    //## end sm_str::map::value_type::value_type%982106957.body
  }


  // Class sm_str::map::iterator::stack 

  template <class K, class T>
  inline map< K,T >::iterator::stack::stack()
    //## begin stack::stack%.hasinit preserve=no
        : _top(-1), _max_size(0), _base(NULL)
    //## end stack::stack%.hasinit
    //## begin stack::stack%.initialization preserve=yes
    //## end stack::stack%.initialization
  {
    //## begin sm_str::map::iterator::stack::stack%.body preserve=yes
    //## end sm_str::map::iterator::stack::stack%.body
  }

  template <class K, class T>
  inline map< K,T >::iterator::stack::stack(const map< K,T >::iterator::stack &right)
    //## begin stack::stack%copy.hasinit preserve=no
        : _top(-1), _max_size(0), _base(NULL)
    //## end stack::stack%copy.hasinit
    //## begin stack::stack%copy.initialization preserve=yes
    //## end stack::stack%copy.initialization
  {
    //## begin sm_str::map::iterator::stack::stack%copy.body preserve=yes
		_top = right._top;
		_max_size = right._max_size;
    
		if (_max_size)
			{ 
				_base = new e_tree_node * [_max_size];
			}
		for (unsigned i = 0; i < _max_size; i++)
			{
				_base [i] = right._base[i];
			}
    //## end sm_str::map::iterator::stack::stack%copy.body
  }

  //## Operation: stack%982208236
  //	Constructor defining the maximum size of the stack.
  template <class K, class T>
  inline map< K,T >::iterator::stack::stack (unsigned max_size)
    //## begin sm_str::map::iterator::stack::stack%982208236.hasinit preserve=no
        : _top(-1), _max_size(0), _base(NULL)
    //## end sm_str::map::iterator::stack::stack%982208236.hasinit
    //## begin sm_str::map::iterator::stack::stack%982208236.initialization preserve=yes
    //## end sm_str::map::iterator::stack::stack%982208236.initialization
  {
    //## begin sm_str::map::iterator::stack::stack%982208236.body preserve=yes
		_max_size = max_size;

    //## end sm_str::map::iterator::stack::stack%982208236.body

    if (_max_size)
    { 
      _base = new e_tree_node * [_max_size];
    }
  }

  //## Operation: stack%982208245
  //	Create a stack with another
  template <class K, class T>
  inline map< K,T >::iterator::stack::stack (stack &right)
    //## begin sm_str::map::iterator::stack::stack%982208245.hasinit preserve=no
        : _top(-1), _max_size(0), _base(NULL)
    //## end sm_str::map::iterator::stack::stack%982208245.hasinit
    //## begin sm_str::map::iterator::stack::stack%982208245.initialization preserve=yes
    //## end sm_str::map::iterator::stack::stack%982208245.initialization
  {
    //## begin sm_str::map::iterator::stack::stack%982208245.body preserve=yes
		*this = right;
    //## end sm_str::map::iterator::stack::stack%982208245.body
  }



  //## Other Operations (inline)
  //## Operation: IsFull%982208238
  //	Returns true if the stack cannot insert any more
  //	elements.
  template <class K, class T>
  inline bool map< K,T >::iterator::stack::IsFull ()
  {
    //## begin sm_str::map::iterator::stack::IsFull%982208238.body preserve=yes
    //## end sm_str::map::iterator::stack::IsFull%982208238.body

    return _top = _max_size - 1;
  }

  //## Operation: IsEmpty%982208239
  //	Returns true if the stack has no elements.
  template <class K, class T>
  inline bool map< K,T >::iterator::stack::IsEmpty ()
  {
    //## begin sm_str::map::iterator::stack::IsEmpty%982208239.body preserve=yes
    //## end sm_str::map::iterator::stack::IsEmpty%982208239.body

    return _top == -1;

  }

  //## Operation: push%982208240
  //	Pushes an item o top of the stack.
  template <class K, class T>
  inline bool map< K,T >::iterator::stack::push (e_tree_node* element)
  {
    //## begin sm_str::map::iterator::stack::push%982208240.body preserve=yes
    //## end sm_str::map::iterator::stack::push%982208240.body

    bool ret = false;
    if (!IsFull())
    {
      _top ++;
      _base [_top] = element;
      ret = true;
    }
    return ret;
  }

  //## Operation: pop%982208241
  //	Removes the element from the top of the stack.
  template <class K, class T>
  inline void map< K,T >::iterator::stack::pop ()
  {
    //## begin sm_str::map::iterator::stack::pop%982208241.body preserve=yes
    //## end sm_str::map::iterator::stack::pop%982208241.body

    if (!IsEmpty())
    {
      _top--;
    }
  }

  //## Operation: top%982208242
  //	returns the element at the top of the stack.
  //## Preconditions:
  //	Stack must not be empty
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::iterator::stack::top ()
  {
    //## begin sm_str::map::iterator::stack::top%982208242.body preserve=yes
    //## end sm_str::map::iterator::stack::top%982208242.body

    return  _base [_top]; 

  }

  // Class sm_str::map::iterator 

  //## Operation: iterator%982208246
  //	constructor with a tree
  template <class K, class T>
  inline map< K,T >::iterator::iterator (e_tree_node* parent)
    //## begin sm_str::map::iterator::iterator%982208246.hasinit preserve=no
        : _end(true), _previous_node_stack(0), _current_node(NULL)
    //## end sm_str::map::iterator::iterator%982208246.hasinit
    //## begin sm_str::map::iterator::iterator%982208246.initialization preserve=yes
    //## end sm_str::map::iterator::iterator%982208246.initialization
  {
    _parent = parent;

    //## begin sm_str::map::iterator::iterator%982208246.body preserve=yes

		_current_node = _parent;
		if (_parent)
			{
        unsigned depth =  _parent->depth();
				_previous_node_stack = stack (depth);
				_end = false;
			}
    //## end sm_str::map::iterator::iterator%982208246.body
  }

  //## Operation: iterator%982274610
  //	constructor using another iterator tio instantiate it
  template <class K, class T>
  inline map< K,T >::iterator::iterator (iterator& right)
    //## begin sm_str::map::iterator::iterator%982274610.hasinit preserve=no
        : _end(true), _previous_node_stack(0), _current_node(NULL)
    //## end sm_str::map::iterator::iterator%982274610.hasinit
    //## begin sm_str::map::iterator::iterator%982274610.initialization preserve=yes
    //## end sm_str::map::iterator::iterator%982274610.initialization
  {
    //## begin sm_str::map::iterator::iterator%982274610.body preserve=yes
		*this = right;
    //## end sm_str::map::iterator::iterator%982274610.body
  }


  template <class K, class T>
  inline const map< K,T >::iterator & map< K,T >::iterator::operator=(const map< K,T >::iterator &right)
  {
    //## begin sm_str::map::iterator::operator=%.body preserve=yes
		_parent = right._parent;
		_current_node = right._current_node;
		_previous_node_stack = right._previous_node_stack;
		_end = right._end;
		return *this;
    //## end sm_str::map::iterator::operator=%.body
  }


  template <class K, class T>
  inline bool map< K,T >::iterator::operator==(const map< K,T >::iterator &right) const
  {
    //## begin sm_str::map::iterator::operator==%.body preserve=yes
    if (right._end && _end) // if we are both at the end
    {
      return true;
    }
		return _parent == right._parent && _current_node == right._current_node && _end == right._end;
    //## end sm_str::map::iterator::operator==%.body
  }

  template <class K, class T>
  inline bool map< K,T >::iterator::operator!=(const map< K,T >::iterator &right) const
  {
    //## begin sm_str::map::iterator::operator!=%.body preserve=yes
		return !(*this == right);
    //## end sm_str::map::iterator::operator!=%.body
  }



  //## Other Operations (inline)
  //## Operation: operator++%982208233
  //	Increment operator used for getting the next element.
  template <class K, class T>
  inline map<K,T>::iterator & map< K,T >::iterator::operator ++ ()
  {
    //## begin sm_str::map::iterator::operator++%982208233.body preserve=yes
		e_tree_node* end = _parent->end ();

		if (_current_node != end) // find the element
			{
				if (_current_node->_right_child) // we have a right child
					{
						_previous_node_stack.push (_current_node);
						_current_node = _current_node->_right_child;

						while (_current_node->_left_child)
							{
								_previous_node_stack.push (_current_node);
								_current_node = _current_node->_left_child;
							}

					}  

				else
					{
						e_tree_node* last_node; // = _current_node;
						
						do 
							{   
								last_node = _current_node;
                if(!_previous_node_stack.IsEmpty ())
                {
									_current_node = _previous_node_stack.top ();
									_previous_node_stack.pop ();
                }
                else
                {
                	_current_node = NULL;
                }
							} while ((_current_node) && (_current_node->_right_child == last_node) && (!_previous_node_stack.IsEmpty ()));
						
					}
				
			}
		else
			{
				_end = true;
			}

    if (!_current_node)
    {
    	_end = true;
    }
		return *this;
    //## end sm_str::map::iterator::operator++%982208233.body
  }

  //## Operation: operator*%982208234
  //	der-reference oprator used to return the node iterated at
  //## Preconditions:
  //	There must be a current Node active or we will be
  //	de-refererencing a NULL pointer
  template <class K, class T>
  inline map<K,T>::value_type map< K,T >::iterator::operator * ()
  {
    //## begin sm_str::map::iterator::operator*%982208234.body preserve=yes
		return _current_node->values;
    //## end sm_str::map::iterator::operator*%982208234.body
  }

  //## Operation: set_begin%982208243
  //	Sets the iterator to the beginning
  template <class K, class T>
  inline map<K,T>::iterator& map< K,T >::iterator::set_begin ()
  {
    //## begin sm_str::map::iterator::set_begin%982208243.body preserve=yes
		if (_parent)
			{
      _end = false;
				_current_node = _parent;
				while (_current_node->_left_child)
					{
						_previous_node_stack.push (_current_node);
						_current_node = _current_node->_left_child;
					}
			}

		return *this;
    //## end sm_str::map::iterator::set_begin%982208243.body
  }

  //## Operation: set_end%982208244
  //	Sets the iterator to the last element and also sets the
  //	end flag
  template <class K, class T>
  inline map<K,T>::iterator& map< K,T >::iterator::set_end ()
  {
    //## begin sm_str::map::iterator::set_end%982208244.body preserve=yes
		while (!_previous_node_stack.IsEmpty ())
			{
				_previous_node_stack.pop();
			}

		if (_parent)
			{
				_current_node = _parent;
				while (_current_node->_right_child)
					{
						_previous_node_stack.push (_current_node);
						_current_node = _current_node->_right_child;
					}
			}

		_end = true;
		return *this;
    //## end sm_str::map::iterator::set_end%982208244.body
  }

  //## Operation: operator=%982274611
  //	assignment operator
  template <class K, class T>
  inline map<K,T>::iterator& map< K,T >::iterator::operator = (iterator& right)
  {
    //## begin sm_str::map::iterator::operator=%982274611.body preserve=yes
		_parent = right._parent;
		_current_node = right._current_node;
		_previous_node_stack = right._previous_node_stack;
		_end = right._end;
		return *this;
    //## end sm_str::map::iterator::operator=%982274611.body
  }

  // Class sm_str::map::e_tree_node 

  //## Operation: e_tree_node%982208247
  //	Constructor requires to ctreate a node
  template <class K, class T>
  inline map< K,T >::e_tree_node::e_tree_node (K key, T data)
    //## begin sm_str::map::e_tree_node::e_tree_node%982208247.hasinit preserve=no
        : bf(0), _left_child(NULL), _right_child(NULL), values(key, data)
    //## end sm_str::map::e_tree_node::e_tree_node%982208247.hasinit
    //## begin sm_str::map::e_tree_node::e_tree_node%982208247.initialization preserve=yes
    //## end sm_str::map::e_tree_node::e_tree_node%982208247.initialization
  {
    //## begin sm_str::map::e_tree_node::e_tree_node%982208247.body preserve=yes
    //## end sm_str::map::e_tree_node::e_tree_node%982208247.body
  }



  //## Other Operations (inline)
  //## Operation: size%982208248
  //	Returns the number of children this node has in both its
  //	left and right children + itself.
  template <class K, class T>
  inline unsigned map< K,T >::e_tree_node::size () const
  {
    //## begin sm_str::map::e_tree_node::size%982208248.body preserve=yes
    unsigned size = 1; // we are at least one by ourselves
    
    if (_left_child)
      {
        size += _left_child->size();
      }
    
    if (_right_child)
      {
        size += _right_child->size();
      }
    
    return size;
    
    //## end sm_str::map::e_tree_node::size%982208248.body
  }

  //## Operation: depth%982208249
  //	Rteurns the Maximum depth of left  and right children
  template <class K, class T>
  inline unsigned map< K,T >::e_tree_node::depth () const
  {
    //## begin sm_str::map::e_tree_node::depth%982208249.body preserve=yes
    unsigned left_depth = 0;
    unsigned right_depth = 0;
    unsigned total_depth = 1; // we are at least one by ourself

    if (_left_child)
      {
        left_depth = _left_child->depth();
      }
    
    if (_right_child)
      {
        right_depth = _right_child->depth();
      }
    
    if (left_depth > right_depth)
      {
        total_depth += left_depth;
      }
    else
      {
        total_depth += right_depth;
      }
    return total_depth;

    //## end sm_str::map::e_tree_node::depth%982208249.body
  }

  //## Operation: begin%982208250
  //	Returns a pointer to the child node whose key has the
  //	least value
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::begin ()
  {
    //## begin sm_str::map::e_tree_node::begin%982208250.body preserve=yes
    e_tree_node* ret = this;
    
    if (_left_child)
      {
        ret = _left_child->begin();
      }
    return ret;
    //## end sm_str::map::e_tree_node::begin%982208250.body
  }

  //## Operation: end%982208251
  //	Returns a pointer to the child node whose key has the
  //	greatest value
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::end ()
  {
    //## begin sm_str::map::e_tree_node::end%982208251.body preserve=yes
    e_tree_node* ret = this;

    if (_right_child)
      {
        ret = _right_child->end();
      }
    return ret;
    //## end sm_str::map::e_tree_node::end%982208251.body
  }

  //## Operation: delete_children%982208252
  //	Deletes all children of this node
  template <class K, class T>
  inline void map< K,T >::e_tree_node::delete_children ()
  {
    //## begin sm_str::map::e_tree_node::delete_children%982208252.body preserve=yes
		if (_left_child)
			{
				_left_child->delete_children();
				delete _left_child;
				_left_child = NULL;
			}

		if (_right_child)
			{
				_right_child->delete_children();
				delete _right_child;
				_right_child = NULL;
			}
    //## end sm_str::map::e_tree_node::delete_children%982208252.body
  }

  //## Operation: insert%982208253
  //	Returns true if a successful insert
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::insert (e_tree_node* new_node)
  {
    //## begin sm_str::map::e_tree_node::insert%982208253.body preserve=yes
    		short old_bf;

		if (new_node->Key() < Key())
			{
				if (_left_child)
					{
						old_bf = _left_child->bf;
						_left_child = _left_child->insert (new_node);
						// check to see if the balance has changed
						if (_left_child->bf != old_bf && _left_child->bf)
							{
								bf--;
							}
					}
				else
					{
						_left_child = new_node;
						bf--;
					}
			}
		else
			{
				// insert into right tree
				if (_right_child)
					{
						old_bf = _right_child->bf;
						_right_child = _right_child->insert (new_node);
						// check to see if the balance has changed
						if (_right_child->bf != old_bf && _right_child->bf)
							{
								bf++;
							}
					}
				else
					{
						_right_child = new_node;
						bf++;
					}
			}
		// check to see if we are out of balance, if so , balance
		if (bf <-1 || bf >1)
			{
				return balance();
			}
		else
			{
				return this;
			}
    //## end sm_str::map::e_tree_node::insert%982208253.body
  }

  //## Operation: remove%982208254
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::remove (K key, e_tree_node** junk)
  {
    //## begin sm_str::map::e_tree_node::remove%982208254.body preserve=yes
		if (key == Key())
			{
				// this is us
				*junk = this;

				// if no child return left
				if (! _right_child)
					{
						return _left_child;
					}
				else
					{
						short oldBf = _right_child->bf;
						e_tree_node* new_root;
						_right_child = _right_child->removeLeftmostDescendant (&new_root);

						// re-connect to new root
						new_root->_left_child = _left_child;
						new_root->_right_child = _right_child;
						new_root->bf = bf;
						return new_root->restoreRightBalance (oldBf);
					}
			}
		else if (key < Key())
			{
				// remove from left child
				if (!_left_child)
					{
						return this;
					}
				else
					{
						short oldBf = _left_child->bf;
						_left_child = _left_child->remove (key, junk);
						return restoreLeftBalance (oldBf);
					}
			}
		else
			{
				if (!_right_child)
					{
						return this;
					}
				else
					{
						short oldBf = _right_child->bf;
						_right_child = _right_child->remove (key, junk);
						return restoreRightBalance (oldBf);
					}
			}
    //## end sm_str::map::e_tree_node::remove%982208254.body
  }

  //## Operation: singleRotateRight%982208255
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::singleRotateRight ()
  {
    //## begin sm_str::map::e_tree_node::singleRotateRight%982208255.body preserve=yes
    		e_tree_node * nodeA = this;
		e_tree_node * nodeB = _left_child;

		// reconnect
		nodeA->_left_child = nodeB->_right_child;
		nodeB->_right_child = nodeA;

		// now update balance factors
		short Abf = nodeA->bf;
		short Bbf = nodeB->bf;
		if (Bbf <= 0)
			{
				if (Bbf > Abf)
					nodeB->bf = Bbf + 1;
				else
					nodeB->bf = Abf + 2;

				nodeA->bf = Abf + 1 - Bbf;
			}

		else
			{
				if (Abf <= 1)
					nodeB->bf = Bbf +1;
				else
					nodeB->bf = Abf + Bbf + 1;

				nodeA->bf = Abf + 1;
			}
		return nodeB;
    //## end sm_str::map::e_tree_node::singleRotateRight%982208255.body
  }

  //## Operation: singleRotateLeft%982208256
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::singleRotateLeft ()
  {
    //## begin sm_str::map::e_tree_node::singleRotateLeft%982208256.body preserve=yes
		e_tree_node * nodeA = this;
		e_tree_node * nodeB = _right_child;

		// reconnect
		nodeA->_right_child = nodeB->_left_child;
		nodeB->_left_child = nodeA;

		// now update balance factors
		short Abf = nodeA->bf;
		short Bbf = nodeB->bf;
		if (Bbf <= 0)
			{
				if (Abf >= 1)
					nodeB->bf = Bbf - 1;
				else
					nodeB->bf = Abf + Bbf - 2;

				nodeA->bf = Abf - 1;
			}

		else
			{
				if (Abf <= Bbf)
					nodeB->bf = Abf - 2;
				else
					nodeB->bf = Bbf - 1;

				nodeA->bf = (Abf - Bbf) - 1;
			}
		return nodeB;
    //## end sm_str::map::e_tree_node::singleRotateLeft%982208256.body
  }

  //## Operation: balance%982208257
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::balance ()
  {
    //## begin sm_str::map::e_tree_node::balance%982208257.body preserve=yes
   if (bf == 0) // nothing to do
      return this;

		if (bf < 0)
			{
				if (_left_child->bf <= 0)
					return singleRotateRight();
				else
					{
						_left_child = _left_child->singleRotateLeft();
						return singleRotateRight();
					}
			}
		else
			{
				if (_right_child->bf >= 0)
					return singleRotateLeft();
				else
					{
						_right_child = _right_child->singleRotateRight();
						return singleRotateLeft();
					}
			}
    //## end sm_str::map::e_tree_node::balance%982208257.body
  }

  //## Operation: removeLeftmostDescendant%982208258
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::removeLeftmostDescendant (e_tree_node **child_ptr)
  {
    //## begin sm_str::map::e_tree_node::removeLeftmostDescendant%982208258.body preserve=yes
		if (!_left_child)
			{
				*child_ptr  = this;
				return _right_child;
			}

		else
			{
				short oldBf = _left_child->bf;
				_left_child = _left_child->removeLeftmostDescendant (child_ptr);
				return restoreLeftBalance (oldBf);
			}
    //## end sm_str::map::e_tree_node::removeLeftmostDescendant%982208258.body
  }

  //## Operation: restoreLeftBalance%982208259
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::restoreLeftBalance (short oldBf)
  {
    //## begin sm_str::map::e_tree_node::restoreLeftBalance%982208259.body preserve=yes
		if (!_left_child)
			{
				bf++;
			}
		else if (_left_child->bf != oldBf && _left_child->bf == 0)
			{
				bf++;
			}

		if (bf > 1)
			{
				return balance ();
			}
		else
			{
				return this;
			}
    //## end sm_str::map::e_tree_node::restoreLeftBalance%982208259.body
  }

  //## Operation: restoreRightBalance%982208260
  template <class K, class T>
  inline map<K,T>::e_tree_node* map< K,T >::e_tree_node::restoreRightBalance (short oldBf)
  {
    //## begin sm_str::map::e_tree_node::restoreRightBalance%982208260.body preserve=yes
		if (!_right_child)
			{
				bf--;
			}
		else if (_right_child->bf != oldBf && _right_child->bf == 0)
			{
				bf--;
			}

		if (bf < -1)
			{
				return balance ();
			}
		else
			{
				return this;
			}
    //## end sm_str::map::e_tree_node::restoreRightBalance%982208260.body
  }

  //## Operation: Data%982274608
  //	Return the type data associated with this Node
  template <class K, class T>
  inline T& map< K,T >::e_tree_node::Data ()
  {
    //## begin sm_str::map::e_tree_node::Data%982274608.body preserve=yes
    //## end sm_str::map::e_tree_node::Data%982274608.body

    return values.second;
  }

  //## Operation: Key%982274609
  //	Return the type keyassociated with this Node
  template <class K, class T>
  inline K map< K,T >::e_tree_node::Key ()
  {
    //## begin sm_str::map::e_tree_node::Key%982274609.body preserve=yes
    //## end sm_str::map::e_tree_node::Key%982274609.body

    return values.first;
  }

  // Parameterized Class sm_str::map 

  template <class K, class T>
  inline map<K,T>::map()
    //## begin map::map%.hasinit preserve=no
    //## end map::map%.hasinit
    //## begin map::map%.initialization preserve=yes
    //## end map::map%.initialization
  {
    //## begin sm_str::map::map%.body preserve=yes
    //## end sm_str::map::map%.body
  }


  template <class K, class T>
  inline map<K,T>::~map()
  {
    //## begin sm_str::map::~map%.body preserve=yes
    purge();    
    //## end sm_str::map::~map%.body
  }



  //## Other Operations (inline)
  //## Operation: begin%980983538
  //	Returns a pointer to the child node whose key has the
  //	least value
  template <class K, class T>
  inline map<K,T>::iterator map<K,T>::begin () const
  {
    //## begin sm_str::map::begin%980983538.body preserve=yes
		iterator ret (_root);
		ret.set_begin();
		return ret;

    //## end sm_str::map::begin%980983538.body
  }

  //## Operation: end%980983539
  //	Returns a pointer to the child node whose key has the
  //	greatest value
  template <class K, class T>
  inline map<K,T>::iterator map<K,T>::end () const
  {
    //## begin sm_str::map::end%980983539.body preserve=yes
		iterator ret (_root);
		ret.set_end();
		return ret;
   
    //## end sm_str::map::end%980983539.body
  }

  //## Operation: depth%980983540
  //	Rteurns the Maximum depth of left  and right children
  template <class K, class T>
  inline unsigned map<K,T>::depth () const
  {
    //## begin sm_str::map::depth%980983540.body preserve=yes
		unsigned ret = 0;
		
		if (_root)
			{
				ret = _root->depth();
			}
		return ret;
    
    //## end sm_str::map::depth%980983540.body
  }

  //## Operation: purge%980983543
  //	Erases the entire contents of the tree
  template <class K, class T>
  inline void map<K,T>::purge ()
  {
    //## begin sm_str::map::purge%980983543.body preserve=yes
    if (_root)
			{
				_root->delete_children();
				delete _root;
				_root = NULL;
			}
    
    if (_root)
			{
				_root->delete_children();
				delete _root;
				_root = NULL;
			}
    
    //## end sm_str::map::purge%980983543.body
  }

  //## Operation: size%980983544
  //	returns the number of nodes in the treee
  template <class K, class T>
  inline unsigned map<K,T>::size () const
  {
    //## begin sm_str::map::size%980983544.body preserve=yes
		unsigned ret = 0;
		
		if (_root)
			{
				ret = _root->size();
			}
		return ret;

    //## end sm_str::map::size%980983544.body
  }

  //## Operation: operator[]%982106958
  //	Returns the Type for the Key requested
  //## Preconditions:
  //	Must check for existance with count()
  template <class K, class T>
  inline const T & map<K,T>::operator [] (K key)
  {
    //## begin sm_str::map::operator[]%982106958.body preserve=yes
		e_tree_node * node = find (key);

		// if find returns null this will barf big time as there is a null pointer returned
		return node->Data();

    //## end sm_str::map::operator[]%982106958.body
  }

  //## Operation: insert%982106959
  //	insert an element into the map.
  template <class K, class T>
  inline bool map<K,T>::insert (value_type element)
  {
    //## begin sm_str::map::insert%982106959.body preserve=yes
		e_tree_node* new_node = new e_tree_node  (element.first, element.second);
		if (!new_node)
			{
				return false;
			}

		if (_root)
			{
				_root = _root->insert (new_node);
			}
		else
			{
				_root = new_node;
			}
		return true;

    //## end sm_str::map::insert%982106959.body
  }

  //## Operation: erase%982106960
  template <class K, class T>
  inline void map<K,T>::erase (K key)
  {
    //## begin sm_str::map::erase%982106960.body preserve=yes
		e_tree_node * eliminated = NULL;

		if (_root)
			{
				_root = _root->remove (key, &eliminated);
				delete eliminated;
			}
    //## end sm_str::map::erase%982106960.body
  }

  //## Operation: find%982106964
  //	Find an element dependant upon Key
  template <class K, class T>
  inline map<K,T>::e_tree_node* map<K,T>::find (K key)
  {
    //## begin sm_str::map::find%982106964.body preserve=yes
	e_tree_node  * current_node = _root;

		while (current_node && !(current_node->Key() == key))
			{
				if (current_node->Key () < key)
					{
						current_node = current_node->_right_child;
					}
				else
					{
						current_node = current_node->_left_child;
					}
			}
		if (current_node && current_node->Key() == key)
			{
				return current_node;
			}
		else
			{
				return NULL;
			}

    //## end sm_str::map::find%982106964.body
  }

  //## Operation: count%982106963
  //	Returns true if there is at least one in the map
  //	matching this key
  template <class K, class T>
  inline bool map<K,T>::count (K key)
  {
    //## begin sm_str::map::count%982106963.body preserve=yes
		return (find (key));
    //## end sm_str::map::count%982106963.body
  }

  // Class sm_str::map::value_type 




  // Additional Declarations
    //## begin sm_str::map::value_type%3A89CB4F02F5.declarations preserve=yes
    //## end sm_str::map::value_type%3A89CB4F02F5.declarations

  // Class sm_str::map::iterator::stack 





  template <class K, class T>
  const map< K,T >::iterator::stack & map< K,T >::iterator::stack::operator=(const map< K,T >::iterator::stack &right)
  {
    //## begin sm_str::map::iterator::stack::operator=%.body preserve=yes
		_top = right._top;
		_max_size = right._max_size;
    
		delete[] _base;
		_base = NULL;

		if (_max_size)
			{ 
				_base = new e_tree_node * [_max_size];
			}
		for (int i = 0; i < _max_size; i++)
			{
				_base [i] = right._base[i];
			}

		return *this;
    //## end sm_str::map::iterator::stack::operator=%.body
  }


  // Additional Declarations
    //## begin sm_str::map::iterator::stack%3A8B50AF022F.declarations preserve=yes
    //## end sm_str::map::iterator::stack%3A8B50AF022F.declarations

  // Class sm_str::map::iterator 





  template <class K, class T>
  map< K,T >::iterator::iterator()
    //## begin iterator::iterator%.hasinit preserve=no
        : _end(true), _previous_node_stack(0), _current_node(NULL)
    //## end iterator::iterator%.hasinit
    //## begin iterator::iterator%.initialization preserve=yes
    //## end iterator::iterator%.initialization
  {
    //## begin sm_str::map::iterator::iterator%.body preserve=yes
    //## end sm_str::map::iterator::iterator%.body
  }


  // Additional Declarations
    //## begin sm_str::map::iterator%3A8B459C00F2.declarations preserve=yes
    //## end sm_str::map::iterator%3A8B459C00F2.declarations

  // Class sm_str::map::e_tree_node 


  //## begin sm_str::map::e_tree_node::_mem_manager%3D508BC803DC.attr preserve=no  private: static MemoryCache {V} 
  template <class K, class T>
  MemoryCache map< K,T >::e_tree_node::_mem_manager;
  //## end sm_str::map::e_tree_node::_mem_manager%3D508BC803DC.attr







  //## Operation: operator new%1028688925
  template <class K, class T>
  void* map< K,T >::e_tree_node::operator new (size_t size)
  {
    //## begin sm_str::map::e_tree_node::operator new%1028688925.body preserve=yes
    return _mem_manager.allocate(size);
    //## end sm_str::map::e_tree_node::operator new%1028688925.body
  }

  //## Operation: operator delete%1028688926
  template <class K, class T>
  void map< K,T >::e_tree_node::operator delete (void* mem)
  {
    //## begin sm_str::map::e_tree_node::operator delete%1028688926.body preserve=yes
    _mem_manager.free(mem);
    //## end sm_str::map::e_tree_node::operator delete%1028688926.body
  }


  // Additional Declarations
    //## begin sm_str::map::e_tree_node%3A8C47970198.declarations preserve=yes
    //## end sm_str::map::e_tree_node%3A8C47970198.declarations

  // Parameterized Class sm_str::map 


  // Additional Declarations
    //## begin sm_str::map%3A77556B0331.declarations preserve=yes
#ifndef _NO_NAMESPACES
    //## end sm_str::map%3A77556B0331.declarations
} // namespace sm_str

//## begin module%3A8B241D037D.epilog preserve=yes
#endif // no name spaces
#ifdef HAL_MAC
#pragma supress_warnings off
#endif
//## end module%3A8B241D037D.epilog
