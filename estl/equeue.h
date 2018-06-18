//## begin module%3A92BB58014B.cm preserve=no
//	  %X% %Q% %Z% %W%
//## end module%3A92BB58014B.cm

//## begin module%3A92BB58014B.cp preserve=no
//	Angelo Fraietta
//## end module%3A92BB58014B.cp

//## Module: e_queue%3A92BB58014B; 
//## Subsystem: <Top Level>
//## Source file: c:\develop\estl\equeue.h

//## begin module%3A92BB58014B.additionalIncludes preserve=no
//## end module%3A92BB58014B.additionalIncludes

//## begin module%3A92BB58014B.includes preserve=yes
//## end module%3A92BB58014B.includes

//## begin module%3A92BB58014B.declarations preserve=no
//## end module%3A92BB58014B.declarations

//## begin module%3A92BB58014B.additionalDeclarations preserve=yes
#ifndef _SM_STR_EQUEUE
#define _SM_STR_EQUEUE

#ifdef HAL_MAC
#pragma supress_warnings on
#endif

#ifndef _NO_NAMESPACES
//## end module%3A92BB58014B.additionalDeclarations


//## Modelname: estr_stl%3A7757A1023B
namespace sm_str {
  //## begin sm_str%3A7757A1023B.initialDeclarations preserve=yes
#endif // no namespace
  //## end sm_str%3A7757A1023B.initialDeclarations

  //## begin sm_str::priority_queue%3A92BA420354.preface preserve=yes
  //## end sm_str::priority_queue%3A92BA420354.preface

  //## Class: priority_queue%3A92BA420354; Parameterized Class
  //	A priority queue template based upon tree
  //## Category: estr_stl%3A7757A1023B
  //## Subsystem: <Top Level>
  //## Persistence: Transient
  //## Cardinality/Multiplicity: n

  template <class T	// The Type Of Object In the priority Queue. Class T
  	// objects Greater Than (<) have greater priority.
  >
  class priority_queue 
  {
    //## begin sm_str::priority_queue%3A92BA420354.initialDeclarations preserve=yes
    //## end sm_str::priority_queue%3A92BA420354.initialDeclarations

    public:
      //## begin sm_str::priority_queue::node%3A92C3EF011B.preface preserve=yes
      //## end sm_str::priority_queue::node%3A92C3EF011B.preface

      //## Class: node%3A92C3EF011B
      //	This is A priority queue node
      //## Category: estr_stl%3A7757A1023B
      //## Persistence: Transient
      //## Cardinality/Multiplicity: n

      class node 
      {
        //## begin sm_str::priority_queue::node%3A92C3EF011B.initialDeclarations preserve=yes
				friend class priority_queue <T>;
        //## end sm_str::priority_queue::node%3A92C3EF011B.initialDeclarations

        public:
          //## Constructors (specified)
            //## Operation: node%982643349
            node (T item);


          //## Other Operations (specified)
            //## Operation: operator >%982643343
            bool operator > (node &right);

            //## Operation: deleteChildren%982643348
            void deleteChildren ();

          // Additional Public Declarations
            //## begin sm_str::priority_queue::node%3A92C3EF011B.public preserve=yes
            //## end sm_str::priority_queue::node%3A92C3EF011B.public

        protected:
          // Additional Protected Declarations
            //## begin sm_str::priority_queue::node%3A92C3EF011B.protected preserve=yes
            //## end sm_str::priority_queue::node%3A92C3EF011B.protected

        private:
          // Additional Private Declarations
            //## begin sm_str::priority_queue::node%3A92C3EF011B.private preserve=yes
            //## end sm_str::priority_queue::node%3A92C3EF011B.private

        private: //## implementation
          // Data Members for Class Attributes

            //## Attribute: _data%3A92C9180283
            //	The Data Contained within the node
            //## begin sm_str::priority_queue::node::_data%3A92C9180283.attr preserve=no  private: T {U} item
            T _data;
            //## end sm_str::priority_queue::node::_data%3A92C9180283.attr

          // Data Members for Associations

            //## Association: estr_stl::link%3A92C6120302
            //## Role: node::_right_child%3A92C614039C
            //## begin sm_str::priority_queue::node::_right_child%3A92C614039C.role preserve=no  private: sm_str::priority_queue< T >::node {0..1 -> 0..1RFHN}
            node *_right_child;
            //## end sm_str::priority_queue::node::_right_child%3A92C614039C.role

            //## Association: estr_stl::link%3A92C6120302
            //## Role: node::_left_child%3A92C6140387
            //## begin sm_str::priority_queue::node::_left_child%3A92C6140387.role preserve=no  private: sm_str::priority_queue< T >::node {0..1 -> 0..1RFHN}
            node *_left_child;
            //## end sm_str::priority_queue::node::_left_child%3A92C6140387.role

          // Additional Implementation Declarations
            //## begin sm_str::priority_queue::node%3A92C3EF011B.implementation preserve=yes
            //## end sm_str::priority_queue::node%3A92C3EF011B.implementation

      };

      //## begin sm_str::priority_queue::node%3A92C3EF011B.postscript preserve=yes
      //## end sm_str::priority_queue::node%3A92C3EF011B.postscript

      //## Constructors (generated)
        priority_queue();

      //## Destructor (generated)
        ~priority_queue();


      //## Other Operations (specified)
        //## Operation: push%982643342
        bool push (T item	// Adds an Item into the priority queue
        );

        //## Operation: pop%982643345
        void pop ();

        //## Operation: top%982643346
        T& top ();

        //## Operation: empty%982643347
        bool empty ();

    public:
      // Additional Public Declarations
        //## begin sm_str::priority_queue%3A92BA420354.public preserve=yes
        //## end sm_str::priority_queue%3A92BA420354.public

    protected:
      // Additional Protected Declarations
        //## begin sm_str::priority_queue%3A92BA420354.protected preserve=yes
        //## end sm_str::priority_queue%3A92BA420354.protected

    private:

      //## Other Operations (specified)
        //## Operation: merge%982643350
        typename priority_queue <T>::node * merge (typename  priority_queue <T>::node *h1, 	// heap 1
        typename  priority_queue <T>::node *h2	// heap 2
        );

      // Additional Private Declarations
        //## begin sm_str::priority_queue%3A92BA420354.private preserve=yes
        //## end sm_str::priority_queue%3A92BA420354.private

    private: //## implementation
      // Data Members for Associations

        //## Association: estr_stl::<unnamed>%3A92C6EA00E6
        //## Role: priority_queue::_root%3A92C6EB0033
        //## begin sm_str::priority_queue::_root%3A92C6EB0033.role preserve=no  public: sm_str::priority_queue< T >::node { -> 0..1RFHN}
        node *_root;
        //## end sm_str::priority_queue::_root%3A92C6EB0033.role

      // Additional Implementation Declarations
        //## begin sm_str::priority_queue%3A92BA420354.implementation preserve=yes
        //## end sm_str::priority_queue%3A92BA420354.implementation

  };

  //## begin sm_str::priority_queue%3A92BA420354.postscript preserve=yes
  //## end sm_str::priority_queue%3A92BA420354.postscript

  //## begin sm_str::e_static_queue%3C58B9600350.preface preserve=yes
  //## end sm_str::e_static_queue%3C58B9600350.preface

  //## Class: e_static_queue%3C58B9600350; Parameterized Class
  //	queue template based upon pre-allocated memory
  //## Category: estr_stl%3A7757A1023B
  //## Subsystem: <Top Level>
  //## Persistence: Transient
  //## Cardinality/Multiplicity: n

  template <class T	// The Type Of Object In the priority Queue. Class T
  	// objects Greater Than (<) have greater priority.
  >
  class e_static_queue 
  {
    //## begin sm_str::e_static_queue%3C58B9600350.initialDeclarations preserve=yes
    //## end sm_str::e_static_queue%3C58B9600350.initialDeclarations

    public:
      //## Constructors (specified)
        //## Operation: e_static_queue%1012442863
        e_static_queue (int size);

      //## Destructor (generated)
        ~e_static_queue();


      //## Other Operations (specified)
        //## Operation: push%1012442864
        bool push (T item	// Adds an Item into the priority queue
        );

        //## Operation: pop%1012442865
        void pop ();

        //## Operation: top%1012442866
        T& top ();

        //## Operation: full%1012442868
        bool full () const;

      //## Get and Set Operations for Class Attributes (generated)

        //## Attribute: _empty%3C58C188017C
        const bool empty () const;

      // Additional Public Declarations
        //## begin sm_str::e_static_queue%3C58B9600350.public preserve=yes
        //## end sm_str::e_static_queue%3C58B9600350.public

    protected:
      // Additional Protected Declarations
        //## begin sm_str::e_static_queue%3C58B9600350.protected preserve=yes
        //## end sm_str::e_static_queue%3C58B9600350.protected

    private:
      // Additional Private Declarations
        //## begin sm_str::e_static_queue%3C58B9600350.private preserve=yes
        //## end sm_str::e_static_queue%3C58B9600350.private

    private: //## implementation
      // Data Members for Class Attributes

        //## Attribute: _max_size%3C58BA2001CF
        //## begin sm_str::e_static_queue::_max_size%3C58BA2001CF.attr preserve=no  private: int {U} size
        int _max_size;
        //## end sm_str::e_static_queue::_max_size%3C58BA2001CF.attr

        //## Attribute: _head%3C58BAA102D9
        //## begin sm_str::e_static_queue::_head%3C58BAA102D9.attr preserve=no  private: int {UT} 0
        volatile int  _head;
        //## end sm_str::e_static_queue::_head%3C58BAA102D9.attr

        //## Attribute: _tail%3C58BACC0000
        //## begin sm_str::e_static_queue::_tail%3C58BACC0000.attr preserve=no  private: int {UT} 0
        volatile int  _tail;
        //## end sm_str::e_static_queue::_tail%3C58BACC0000.attr

        //## Attribute: _data%3C58BF7E006D
        //## begin sm_str::e_static_queue::_data%3C58BF7E006D.attr preserve=no  private: T* {U} NULL
        T* _data;
        //## end sm_str::e_static_queue::_data%3C58BF7E006D.attr

        //## begin sm_str::e_static_queue::_empty%3C58C188017C.attr preserve=no  public: bool {U} true
        bool _empty;
        //## end sm_str::e_static_queue::_empty%3C58C188017C.attr

      // Additional Implementation Declarations
        //## begin sm_str::e_static_queue%3C58B9600350.implementation preserve=yes
        //## end sm_str::e_static_queue%3C58B9600350.implementation

  };

  //## begin sm_str::e_static_queue%3C58B9600350.postscript preserve=yes
  //## end sm_str::e_static_queue%3C58B9600350.postscript

  // Class sm_str::priority_queue::node 

  //## Operation: node%982643349
  //	Constructor
  template <class T>
  inline priority_queue< T >::node::node (T item)
    //## begin sm_str::priority_queue::node::node%982643349.hasinit preserve=no
        : _data(item), _right_child(NULL), _left_child(NULL)
    //## end sm_str::priority_queue::node::node%982643349.hasinit
    //## begin sm_str::priority_queue::node::node%982643349.initialization preserve=yes
    //## end sm_str::priority_queue::node::node%982643349.initialization
  {
    //## begin sm_str::priority_queue::node::node%982643349.body preserve=yes
    //## end sm_str::priority_queue::node::node%982643349.body
  }



  //## Other Operations (inline)
  //## Operation: operator >%982643343
  //	returns true if Data is greater than other node data
  template <class T>
  inline bool priority_queue< T >::node::operator > (node &right)
  {
    return _data > right._data;

    //## begin sm_str::priority_queue::node::operator >%982643343.body preserve=yes
    //## end sm_str::priority_queue::node::operator >%982643343.body
  }

  //## Operation: deleteChildren%982643348
  //	Deletes all Children nodes
  template <class T>
  inline void priority_queue< T >::node::deleteChildren ()
  {
    //## begin sm_str::priority_queue::node::deleteChildren%982643348.body preserve=yes
		if (_left_child)
			{
				_left_child->deleteChildren ();
				_left_child = NULL;
			}
		if (_right_child)
			{
				_right_child->deleteChildren ();
				_right_child = NULL;
			}

    //## end sm_str::priority_queue::node::deleteChildren%982643348.body
  }

  // Parameterized Class sm_str::priority_queue 

  template <class T>
  inline priority_queue<T>::priority_queue()
    //## begin priority_queue::priority_queue%.hasinit preserve=no
    //## end priority_queue::priority_queue%.hasinit
    //## begin priority_queue::priority_queue%.initialization preserve=yes
    //## end priority_queue::priority_queue%.initialization
  {
    //## begin sm_str::priority_queue::priority_queue%.body preserve=yes
    //## end sm_str::priority_queue::priority_queue%.body
  }


  template <class T>
  inline priority_queue<T>::~priority_queue()
  {
    //## begin sm_str::priority_queue::~priority_queue%.body preserve=yes
		if (_root)
			{
				_root->deleteChildren ();
				delete _root;
				_root = NULL;
			}
    //## end sm_str::priority_queue::~priority_queue%.body
  }



  //## Other Operations (inline)
  //## Operation: push%982643342
  //	pushes an item onto the queue
  template <class T>
  inline bool priority_queue<T>::push (T item)
  {
    //## begin sm_str::priority_queue::push%982643342.body preserve=yes
		bool ret = false;

		node* new_node = new node (item);
		if (new_node)
			{
				_root = merge (_root, new_node);
			}
		return ret;

    //## end sm_str::priority_queue::push%982643342.body
  }

  //## Operation: pop%982643345
  //	pops Item from front of queue
  template <class T>
  inline void priority_queue<T>::pop ()
  {
    //## begin sm_str::priority_queue::pop%982643345.body preserve=yes
		node* popped = _root;
		_root = merge (_root->_left_child, _root->_right_child);
		delete popped;
    //## end sm_str::priority_queue::pop%982643345.body
  }

  //## Operation: top%982643346
  //	Gets Item at top of queue
  template <class T>
  inline T& priority_queue<T>::top ()
  {
    return _root->_data;

    //## begin sm_str::priority_queue::top%982643346.body preserve=yes
    //## end sm_str::priority_queue::top%982643346.body
  }

  //## Operation: empty%982643347
  //	returns true if empty
  template <class T>
  inline bool priority_queue<T>::empty ()
  {
    return !(_root);

    //## begin sm_str::priority_queue::empty%982643347.body preserve=yes
    //## end sm_str::priority_queue::empty%982643347.body
  }

  //## Operation: merge%982643350
  //	Merge two heap to form one heap
  template <class T>
  inline typename priority_queue <T>::node * priority_queue<T>::merge (typename  priority_queue <T>::node *h1, typename  priority_queue <T>::node *h2)
  {
    //## begin sm_str::priority_queue::merge%982643350.body preserve=yes
		if (!h1) return h2;
		if (!h2)return h1;

		if (*h2 > *h1)
			{
				return merge (h2, h1);
			}
		else
			{
				node* lchild = h1->_left_child;
				if (lchild)
					{
						h1->_left_child = merge (h1->_right_child, h2);
						h1->_right_child = lchild;
					}
				else
					{
						h1->_left_child = h2;
					}
				return h1;
			}
    //## end sm_str::priority_queue::merge%982643350.body
  }

  // Parameterized Class sm_str::e_static_queue 

  //## Operation: e_static_queue%1012442863
  //	Constructor, defining the maximum size
  template <class T>
  inline e_static_queue<T>::e_static_queue (int size)
    //## begin sm_str::e_static_queue::e_static_queue%1012442863.hasinit preserve=no
        : _max_size(size), _head(0), _tail(0), _data(NULL), _empty(true)
    //## end sm_str::e_static_queue::e_static_queue%1012442863.hasinit
    //## begin sm_str::e_static_queue::e_static_queue%1012442863.initialization preserve=yes
    //## end sm_str::e_static_queue::e_static_queue%1012442863.initialization
  {
    //## begin sm_str::e_static_queue::e_static_queue%1012442863.body preserve=yes
    _data = new T [_max_size];
    //## end sm_str::e_static_queue::e_static_queue%1012442863.body
  }


  template <class T>
  inline e_static_queue<T>::~e_static_queue()
  {
    //## begin sm_str::e_static_queue::~e_static_queue%.body preserve=yes
    delete []_data;
    //## end sm_str::e_static_queue::~e_static_queue%.body
  }



  //## Other Operations (inline)
  //## Operation: push%1012442864
  //	pushes an item onto the queue
  template <class T>
  inline bool e_static_queue<T>::push (T item)
  {
    //## begin sm_str::e_static_queue::push%1012442864.body preserve=yes
   bool ret = false;

	 if (!full())
   {
      _empty = false;

    	_data [_tail] = item;
      _tail = (_tail + 1 ) % _max_size;
      ret = true;
   }

   return ret;

    //## end sm_str::e_static_queue::push%1012442864.body
  }

  //## Operation: pop%1012442865
  //	pops Item from front of queue
  template <class T>
  inline void e_static_queue<T>::pop ()
  {
    //## begin sm_str::e_static_queue::pop%1012442865.body preserve=yes
    _head = (_head + 1) % _max_size ;

    _empty = (_head == _tail);
    //## end sm_str::e_static_queue::pop%1012442865.body
  }

  //## Operation: top%1012442866
  //	Gets Item at top of queue
  template <class T>
  inline T& e_static_queue<T>::top ()
  {
    //## begin sm_str::e_static_queue::top%1012442866.body preserve=yes
    return _data [_head];
    //## end sm_str::e_static_queue::top%1012442866.body
  }

  //## Operation: full%1012442868
  template <class T>
  inline bool e_static_queue<T>::full () const
  {
    //## begin sm_str::e_static_queue::full%1012442868.body preserve=yes
    return (!_empty && _head == _tail); 
    //## end sm_str::e_static_queue::full%1012442868.body
  }

  //## Get and Set Operations for Class Attributes (inline)

  template <class T>
  inline const bool e_static_queue<T>::empty () const
  {
    //## begin sm_str::e_static_queue::empty%3C58C188017C.get preserve=no
    return _empty;
    //## end sm_str::e_static_queue::empty%3C58C188017C.get
  }

  // Class sm_str::priority_queue::node 





  // Additional Declarations
    //## begin sm_str::priority_queue::node%3A92C3EF011B.declarations preserve=yes
    //## end sm_str::priority_queue::node%3A92C3EF011B.declarations

  // Parameterized Class sm_str::priority_queue 


  // Additional Declarations
    //## begin sm_str::priority_queue%3A92BA420354.declarations preserve=yes
#ifndef _NO_NAMESPACES
    //## end sm_str::priority_queue%3A92BA420354.declarations
  // Parameterized Class sm_str::e_static_queue 






  // Additional Declarations
    //## begin sm_str::e_static_queue%3C58B9600350.declarations preserve=yes
    //## end sm_str::e_static_queue%3C58B9600350.declarations

} // namespace sm_str

//## begin module%3A92BB58014B.epilog preserve=yes
#endif // no namespace

#ifdef HAL_MAC
#pragma supress_warnings off
#endif

#endif // ifdef _SM_STR_EQUEUE
//## end module%3A92BB58014B.epilog
