.class public final Lcom/squareup/okhttp/internal/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:[Lokio/Source;

.field private final d:[J

.field final synthetic e:Lcom/squareup/okhttp/internal/b;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/b;Ljava/lang/String;J[Lokio/Source;[J)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/b$g;->e:Lcom/squareup/okhttp/internal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/squareup/okhttp/internal/b$g;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/squareup/okhttp/internal/b$g;->b:J

    .line 5
    iput-object p5, p0, Lcom/squareup/okhttp/internal/b$g;->c:[Lokio/Source;

    .line 6
    iput-object p6, p0, Lcom/squareup/okhttp/internal/b$g;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/b;Ljava/lang/String;J[Lokio/Source;[JLcom/squareup/okhttp/internal/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/b$g;-><init>(Lcom/squareup/okhttp/internal/b;Ljava/lang/String;J[Lokio/Source;[J)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/b$g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/b$g;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/squareup/okhttp/internal/b$e;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$g;->e:Lcom/squareup/okhttp/internal/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/b$g;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/b$g;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/b;->e(Lcom/squareup/okhttp/internal/b;Ljava/lang/String;J)Lcom/squareup/okhttp/internal/b$e;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$g;->c:[Lokio/Source;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lcom/squareup/okhttp/internal/i;->c(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(I)Lokio/Source;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/b$g;->c:[Lokio/Source;

    aget-object p1, v0, p1

    return-object p1
.end method
