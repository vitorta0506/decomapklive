.class public Lcom/guochao/faceshow/aaspring/debug/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/guochao/faceshow/aaspring/debug/a;


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/debug/DebugService$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/guochao/faceshow/aaspring/debug/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/debug/a;->b:Lcom/guochao/faceshow/aaspring/debug/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/debug/a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/debug/a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/debug/a;->b:Lcom/guochao/faceshow/aaspring/debug/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/debug/a;->b:Lcom/guochao/faceshow/aaspring/debug/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/a;->a:Lcom/guochao/faceshow/aaspring/debug/DebugService$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
