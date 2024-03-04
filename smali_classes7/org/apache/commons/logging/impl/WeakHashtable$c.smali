.class final Lorg/apache/commons/logging/impl/WeakHashtable$c;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lorg/apache/commons/logging/impl/WeakHashtable$b;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 3
    iput-object p3, p0, Lorg/apache/commons/logging/impl/WeakHashtable$c;->a:Lorg/apache/commons/logging/impl/WeakHashtable$b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$b;Lorg/apache/commons/logging/impl/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/logging/impl/WeakHashtable$c;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$b;)V

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/logging/impl/WeakHashtable$c;)Lorg/apache/commons/logging/impl/WeakHashtable$b;
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$c;->b()Lorg/apache/commons/logging/impl/WeakHashtable$b;

    move-result-object p0

    return-object p0
.end method

.method private b()Lorg/apache/commons/logging/impl/WeakHashtable$b;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$c;->a:Lorg/apache/commons/logging/impl/WeakHashtable$b;

    return-object v0
.end method
