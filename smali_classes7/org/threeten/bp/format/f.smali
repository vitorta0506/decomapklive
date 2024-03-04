.class public abstract Lorg/threeten/bp/format/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/threeten/bp/format/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/threeten/bp/format/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/threeten/bp/format/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static b()Lorg/threeten/bp/format/f;
    .locals 1

    sget-object v0, Lorg/threeten/bp/format/f$a;->a:Lorg/threeten/bp/format/f;

    return-object v0
.end method


# virtual methods
.method public abstract c(Lorg/threeten/bp/temporal/g;JLorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract d(Lorg/threeten/bp/temporal/g;Lorg/threeten/bp/format/TextStyle;Ljava/util/Locale;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/temporal/g;",
            "Lorg/threeten/bp/format/TextStyle;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method
