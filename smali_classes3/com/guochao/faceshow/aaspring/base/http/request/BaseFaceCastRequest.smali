.class public abstract Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/utils/a;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$c;,
        Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;,
        Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/utils/a;",
        "Landroidx/lifecycle/LifecycleObserver;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final A:[C

.field public static v:Ljava/lang/String; = ""

.field public static w:Ljava/lang/String; = ""

.field public static x:Ljava/lang/String; = ""

.field public static final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static z:Landroid/os/Handler;


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

.field b:Lcom/guochao/faceshow/aaspring/base/utils/a;

.field c:Z

.field protected final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lorg/json/JSONObject;

.field protected h:Z

.field protected i:Ljava/lang/Object;

.field protected j:Ljava/lang/String;

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroidx/lifecycle/LifecycleOwner;

.field m:Lcom/guochao/faceshow/aaspring/base/http/callback/a;

.field private n:Z

.field protected o:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

.field p:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

.field private q:I

.field protected r:I

.field protected s:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field t:Ljava/lang/Runnable;

.field u:Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y:Ljava/util/List;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->z:Landroid/os/Handler;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->A:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->b()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->f:Ljava/util/Map;

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->n:Z

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->q:I

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$c;-><init>(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->t:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;-><init>(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->b()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c:Z

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->e:Ljava/util/Map;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->f:Ljava/util/Map;

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->n:Z

    .line 20
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->q:I

    .line 21
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$c;-><init>(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->t:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;-><init>(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    .line 23
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_0

    .line 24
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->k:Ljava/lang/ref/WeakReference;

    .line 25
    :cond_0
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->j:Ljava/lang/String;

    return-void
.end method

.method public static J(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static N([B)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    aget-byte v3, p0, v2

    mul-int/lit8 v4, v2, 0x2

    .line 4
    sget-object v5, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->A:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 5
    aget-char v3, v5, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public A(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b<",
            "TT;>;)TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->s:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$b;

    return-object p0
.end method

.method public B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public C(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public F(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public G(ILcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TE;>;)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->r:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->h:Z

    .line 3
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->H(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->b:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-object p0
.end method

.method abstract H(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TE;>;)",
            "Lcom/guochao/faceshow/aaspring/base/utils/a;"
        }
    .end annotation
.end method

.method public I(I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->q:I

    return-object p0
.end method

.method public K(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->n:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    iput-boolean p1, v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->a:Z

    return-object p0
.end method

.method public L()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    return-object v0
.end method

.method public M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TE;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mCancel:Z

    .line 2
    :cond_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c:Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->H(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->b:Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-object p0
.end method

.method public O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->k:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-object p0
.end method

.method public Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->j:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lcom/guochao/faceshow/aaspring/base/http/callback/a;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/a;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->m:Lcom/guochao/faceshow/aaspring/base/http/callback/a;

    return-object p0
.end method

.method public b(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TE;>;)TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-object p0
.end method

.method public c(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;",
            ">(TC;)TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    return-object p0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->b:Lcom/guochao/faceshow/aaspring/base/utils/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/utils/a;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->cancel()V

    :cond_2
    return-void
.end method

.method protected d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 10

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v5, v6, :cond_1

    const-string v6, "%s=%s&"

    new-array v7, v7, [Ljava/lang/Object;

    .line 11
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "time=%s&sign=%s"

    new-array v5, v7, [Ljava/lang/Object;

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    sget-object v4, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v:Ljava/lang/String;

    aput-object v4, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "MD5"

    .line 15
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 16
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    const-string v2, "pass_s"

    .line 17
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->N([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "stampTime"

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "unixTime"

    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :catch_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/NativeBridge;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/guochao/faceshow/aaspring/base/http/callback/a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->m:Lcom/guochao/faceshow/aaspring/base/http/callback/a;

    return-object v0
.end method

.method public g()Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->f:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public k()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    return-object v0
.end method

.method public l()Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->e:Ljava/util/Map;

    return-object v0
.end method

.method public n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d:Ljava/util/Map;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->j:Ljava/lang/String;

    return-object v0
.end method

.method onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->cancel()V

    return-void
.end method

.method public p()Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-object v0
.end method

.method public q()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->q:I

    return v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->f:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public t(Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->d:Ljava/util/Map;

    const-string v2, "unixTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->j:Ljava/lang/String;

    const-string v4, "/"

    const-string v5, ""

    .line 4
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->w:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "MD5"

    .line 6
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 8
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->N([B)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return v1
.end method

.method public u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(TP;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "param"

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :catch_0
    :cond_3
    return-object p0

    .line 11
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "please put a non-number or non-String object here"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    const-string v1, "BaseFaceCastRequest"

    invoke-static {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public w(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public x()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->g:Lorg/json/JSONObject;

    const-string v1, "systoken"

    sget-object v2, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->l:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method
