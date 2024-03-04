.class public Lel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lel/c;


# static fields
.field private static final d:Ljava/util/List;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lel/b;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lel/b;->a:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lel/b;->b:Ljava/util/List;

    iput-object p3, p0, Lel/b;->c:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    sget-object v0, Lel/b;->d:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lel/b;-><init>(Ljava/lang/String;Ljava/util/List;[B)V

    return-void
.end method


# virtual methods
.method public a()Lel/b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    return-object p0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lel/b;->c:[B

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lel/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lel/b;->a:Ljava/lang/String;

    return-object v0
.end method
