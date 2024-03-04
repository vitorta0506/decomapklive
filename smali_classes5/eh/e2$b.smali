.class final Leh/e2$b;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/ref/ReferenceQueue;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput-object p3, p0, Leh/e2$b;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Leh/e2$b;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Leh/e2$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/e2$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Leh/e2$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/e2$b;->b:Ljava/lang/String;

    return-object p0
.end method
