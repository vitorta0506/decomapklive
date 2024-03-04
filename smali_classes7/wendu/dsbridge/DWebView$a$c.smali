.class Lwendu/dsbridge/DWebView$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwendu/dsbridge/DWebView$a;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lwendu/dsbridge/DWebView$a;


# direct methods
.method constructor <init>(Lwendu/dsbridge/DWebView$a;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lwendu/dsbridge/DWebView$a$c;->c:Lwendu/dsbridge/DWebView$a;

    iput-object p2, p0, Lwendu/dsbridge/DWebView$a$c;->a:Landroid/webkit/JsPromptResult;

    iput-object p3, p0, Lwendu/dsbridge/DWebView$a$c;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lwendu/dsbridge/DWebView$a$c;->c:Lwendu/dsbridge/DWebView$a;

    iget-object p1, p1, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-static {p1}, Lwendu/dsbridge/DWebView;->i(Lwendu/dsbridge/DWebView;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lwendu/dsbridge/DWebView$a$c;->a:Landroid/webkit/JsPromptResult;

    iget-object p2, p0, Lwendu/dsbridge/DWebView$a$c;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lwendu/dsbridge/DWebView$a$c;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {p1}, Landroid/webkit/JsPromptResult;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method
