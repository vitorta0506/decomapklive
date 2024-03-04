.class Lf8/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/c;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf8/c;


# direct methods
.method constructor <init>(Lf8/c;)V
    .locals 0

    iput-object p1, p0, Lf8/c$a;->a:Lf8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf8/c$a;->a:Lf8/c;

    invoke-static {p1}, Lf8/c;->e(Lf8/c;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 2
    iget-object p2, p0, Lf8/c$a;->a:Lf8/c;

    invoke-static {p2}, Lf8/c;->f(Lf8/c;)Lf8/c$d;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lf8/c$a;->a:Lf8/c;

    invoke-static {p2}, Lf8/c;->f(Lf8/c;)Lf8/c$d;

    move-result-object p2

    const/4 p3, 0x4

    if-lt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2, p1}, Lf8/c$d;->a(Z)V

    :cond_1
    return-void
.end method
