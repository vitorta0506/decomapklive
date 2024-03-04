.class public final Lf6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf6/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le6/b<",
        "Lf6/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final e:Ld6/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ld6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ld6/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lf6/d$b;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ld6/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field private c:Ld6/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lf6/a;->a:Lf6/a;

    sput-object v0, Lf6/d;->e:Ld6/c;

    .line 2
    sget-object v0, Lf6/c;->a:Lf6/c;

    sput-object v0, Lf6/d;->f:Ld6/e;

    .line 3
    sget-object v0, Lf6/b;->a:Lf6/b;

    sput-object v0, Lf6/d;->g:Ld6/e;

    .line 4
    new-instance v0, Lf6/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf6/d$b;-><init>(Lf6/d$a;)V

    sput-object v0, Lf6/d;->h:Lf6/d$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf6/d;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf6/d;->b:Ljava/util/Map;

    .line 4
    sget-object v0, Lf6/d;->e:Ld6/c;

    iput-object v0, p0, Lf6/d;->c:Ld6/c;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf6/d;->d:Z

    .line 6
    const-class v0, Ljava/lang/String;

    sget-object v1, Lf6/d;->f:Ld6/e;

    invoke-virtual {p0, v0, v1}, Lf6/d;->p(Ljava/lang/Class;Ld6/e;)Lf6/d;

    .line 7
    const-class v0, Ljava/lang/Boolean;

    sget-object v1, Lf6/d;->g:Ld6/e;

    invoke-virtual {p0, v0, v1}, Lf6/d;->p(Ljava/lang/Class;Ld6/e;)Lf6/d;

    .line 8
    const-class v0, Ljava/util/Date;

    sget-object v1, Lf6/d;->h:Lf6/d$b;

    invoke-virtual {p0, v0, v1}, Lf6/d;->p(Ljava/lang/Class;Ld6/e;)Lf6/d;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Ld6/d;)V
    .locals 0

    invoke-static {p0, p1}, Lf6/d;->l(Ljava/lang/Object;Ld6/d;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ld6/f;)V
    .locals 0

    invoke-static {p0, p1}, Lf6/d;->m(Ljava/lang/String;Ld6/f;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Boolean;Ld6/f;)V
    .locals 0

    invoke-static {p0, p1}, Lf6/d;->n(Ljava/lang/Boolean;Ld6/f;)V

    return-void
.end method

.method static synthetic e(Lf6/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lf6/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic f(Lf6/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lf6/d;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lf6/d;)Ld6/c;
    .locals 0

    iget-object p0, p0, Lf6/d;->c:Ld6/c;

    return-object p0
.end method

.method static synthetic h(Lf6/d;)Z
    .locals 0

    iget-boolean p0, p0, Lf6/d;->d:Z

    return p0
.end method

.method private static synthetic l(Ljava/lang/Object;Ld6/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t find encoder for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/encoders/EncodingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic m(Ljava/lang/String;Ld6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Ld6/f;->a(Ljava/lang/String;)Ld6/f;

    return-void
.end method

.method private static synthetic n(Ljava/lang/Boolean;Ld6/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Ld6/f;->e(Z)Ld6/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;Ld6/c;)Le6/b;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld6/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lf6/d;->o(Ljava/lang/Class;Ld6/c;)Lf6/d;

    move-result-object p1

    return-object p1
.end method

.method public i()Ld6/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lf6/d$a;

    invoke-direct {v0, p0}, Lf6/d$a;-><init>(Lf6/d;)V

    return-object v0
.end method

.method public j(Le6/a;)Lf6/d;
    .locals 0
    .param p1    # Le6/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-interface {p1, p0}, Le6/a;->a(Le6/b;)V

    return-object p0
.end method

.method public k(Z)Lf6/d;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-boolean p1, p0, Lf6/d;->d:Z

    return-object p0
.end method

.method public o(Ljava/lang/Class;Ld6/c;)Lf6/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld6/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ld6/c<",
            "-TT;>;)",
            "Lf6/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf6/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lf6/d;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public p(Ljava/lang/Class;Ld6/e;)Lf6/d;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ld6/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ld6/e<",
            "-TT;>;)",
            "Lf6/d;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf6/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lf6/d;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
