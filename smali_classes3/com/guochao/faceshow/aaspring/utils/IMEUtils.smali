.class public Lcom/guochao/faceshow/aaspring/utils/IMEUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideIME(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return-void
.end method

.method public static showIME(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return-void
.end method
