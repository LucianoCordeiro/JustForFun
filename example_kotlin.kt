//Show a toast
fun Activity.toast(message: CharSequence, length: Int = Toast.LENGTH_SHORT) =
        Toast.makeText(this, message, length).show()

//Click event
fun Activity.onClick(@IdRes viewId: Int, onClick: (v: android.view.View?) -> Unit) {
    val view = findViewById<View>(viewId)
    view.setOnClickListener { onClick(it)} }

//Fetch TextView and return its text

fun Activity.getTextString(@IdRes id: Int): String {
    val textView = findViewById<TextView>(id)
    val s = textView.text.toString()
    return s
}

//Activity

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        //View

        onClick(R.id.btLogin) { onClickLogin()}
        //Events


    }

    fun onClickLogin() {
        val login = getTextString(R.id.tLogin)
        val password = getTextString(R.id.tPassword)
        if (login == "lucci" && password == "tart13") {
            toast("Welcome! Login successful")
        }
        else {
            toast("Login and password are wrong")
        }
    }




}
