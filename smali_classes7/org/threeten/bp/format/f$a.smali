.class Lorg/threeten/bp/format/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:Lorg/threeten/bp/format/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/threeten/bp/format/f$a;->a()Lorg/threeten/bp/format/f;

    move-result-object v0

    sput-object v0, Lorg/threeten/bp/format/f$a;->a:Lorg/threeten/bp/format/f;

    return-void
.end method

.method static a()Lorg/threeten/bp/format/f;
    .locals 3

    .line 1
    invoke-static {}, Lorg/threeten/bp/format/f;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    new-instance v1, Lorg/threeten/bp/format/h;

    invoke-direct {v1}, Lorg/threeten/bp/format/h;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lorg/threeten/bp/format/f;->a()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/threeten/bp/format/f;

    return-object v0
.end method
