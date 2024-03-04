.class Lcom/guochao/faceshow/views/g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/g$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/g$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/g$a$a;->a:Lcom/guochao/faceshow/views/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/g$a$a;->a:Lcom/guochao/faceshow/views/g$a;

    iget-object v0, v0, Lcom/guochao/faceshow/views/g$a;->a:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->onFinish()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/g$a$a;->a:Lcom/guochao/faceshow/views/g$a;

    iget-object v0, v0, Lcom/guochao/faceshow/views/g$a;->a:Lcom/guochao/faceshow/views/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/views/g;->access$102(Lcom/guochao/faceshow/views/g;Z)Z

    return-void
.end method
