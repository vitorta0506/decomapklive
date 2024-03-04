.class public final Lcom/google/firebase/encoders/proto/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/encoders/proto/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le6/b<",
        "Lcom/google/firebase/encoders/proto/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ld6/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld6/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lg6/b;->a:Lg6/b;

    sput-object v0, Lcom/google/firebase/encoders/proto/e$a;->d:Ld6/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/encoders/proto/e$a;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/encoders/proto/e$a;->b:Ljava/util/Map;

    .line 4
    sget-object v0, Lcom/google/firebase/encoders/proto/e$a;->d:Ld6/c;

    iput-object v0, p0, Lcom/google/firebase/encoders/proto/e$a;->c:Ld6/c;

    return-void
.end method

.method public static synthetic b(Ljava/lang/Object;Ld6/d;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/encoders/proto/e$a;->e(Ljava/lang/Object;Ld6/d;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Object;Ld6/d;)V
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

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/encoders/proto/e$a;->f(Ljava/lang/Class;Ld6/c;)Lcom/google/firebase/encoders/proto/e$a;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/google/firebase/encoders/proto/e;
    .locals 4

    new-instance v0, Lcom/google/firebase/encoders/proto/e;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/firebase/encoders/proto/e$a;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/firebase/encoders/proto/e$a;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lcom/google/firebase/encoders/proto/e$a;->c:Ld6/c;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/encoders/proto/e;-><init>(Ljava/util/Map;Ljava/util/Map;Ld6/c;)V

    return-object v0
.end method

.method public d(Le6/a;)Lcom/google/firebase/encoders/proto/e$a;
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

.method public f(Ljava/lang/Class;Ld6/c;)Lcom/google/firebase/encoders/proto/e$a;
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ld6/c<",
            "-TU;>;)",
            "Lcom/google/firebase/encoders/proto/e$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/e$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lcom/google/firebase/encoders/proto/e$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
