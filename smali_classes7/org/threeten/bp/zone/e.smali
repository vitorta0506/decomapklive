.class public abstract Lorg/threeten/bp/zone/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/zone/e$b;,
        Lorg/threeten/bp/zone/e$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/threeten/bp/zone/e;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/threeten/bp/zone/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/threeten/bp/zone/e$a;

    invoke-direct {v0}, Lorg/threeten/bp/zone/e$a;-><init>()V

    sput-object v0, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/zone/e;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lorg/threeten/bp/zone/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/threeten/bp/zone/e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 3

    .line 1
    sget-object v0, Lorg/threeten/bp/zone/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lorg/threeten/bp/zone/e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lorg/threeten/bp/zone/e$b;

    invoke-direct {v2}, Lorg/threeten/bp/zone/e$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/zone/e;

    invoke-virtual {v0}, Lorg/threeten/bp/zone/e;->b()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract b()V
.end method
