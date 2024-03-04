.class public Lnd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lnd/c;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()I
    .locals 1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method
