.class final Lorg/apache/commons/logging/impl/WeakHashtable$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$b;->a:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$b;->b:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$c;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$b;Lorg/apache/commons/logging/impl/b;)V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$b;->a:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/commons/logging/impl/WeakHashtable$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/logging/impl/WeakHashtable$b;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/logging/impl/WeakHashtable$b;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lorg/apache/commons/logging/impl/WeakHashtable$b;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$b;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/apache/commons/logging/impl/WeakHashtable$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lorg/apache/commons/logging/impl/WeakHashtable$b;

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$b;->b()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-direct {p1}, Lorg/apache/commons/logging/impl/WeakHashtable$b;->b()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/logging/impl/WeakHashtable$b;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/logging/impl/WeakHashtable$b;->hashCode()I

    move-result p1

    if-ne v2, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable$b;->b:I

    return v0
.end method
