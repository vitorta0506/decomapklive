.class Lwendu/dsbridge/DWebView$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwendu/dsbridge/DWebView$a;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lwendu/dsbridge/DWebView$a;


# direct methods
.method constructor <init>(Lwendu/dsbridge/DWebView$a;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lwendu/dsbridge/DWebView$a$a;->b:Lwendu/dsbridge/DWebView$a;

    iput-object p2, p0, Lwendu/dsbridge/DWebView$a$a;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lwendu/dsbridge/DWebView$a$a;->b:Lwendu/dsbridge/DWebView$a;

    iget-object p1, p1, Lwendu/dsbridge/DWebView$a;->a:Lwendu/dsbridge/DWebView;

    invoke-static {p1}, Lwendu/dsbridge/DWebView;->i(Lwendu/dsbridge/DWebView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lwendu/dsbridge/DWebView$a$a;->a:Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->confirm()V

    :cond_0
    return-void
.end method
