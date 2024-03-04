.class Lf8/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf8/e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf8/e;


# direct methods
.method constructor <init>(Lf8/e;)V
    .locals 0

    iput-object p1, p0, Lf8/e$a;->a:Lf8/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf8/e$a;->a:Lf8/e;

    invoke-static {p1}, Lf8/e;->e(Lf8/e;)Lf8/e$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lf8/e$a;->a:Lf8/e;

    invoke-static {p1}, Lf8/e;->e(Lf8/e;)Lf8/e$b;

    move-result-object p1

    iget-object v0, p0, Lf8/e$a;->a:Lf8/e;

    invoke-static {v0}, Lf8/e;->f(Lf8/e;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lf8/e$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
