.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/trtc/call/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/b;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/b;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a$g;Ljava/lang/String;)V

    return-void
.end method
