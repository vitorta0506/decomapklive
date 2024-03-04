.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "MicroMsg.NetworkUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/f$a;-><init>(Landroid/os/Handler;Ljava/lang/String;I)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
