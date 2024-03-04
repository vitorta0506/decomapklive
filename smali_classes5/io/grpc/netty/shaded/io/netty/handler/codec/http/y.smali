.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field public static final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field public static final d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field public static final e:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field public static final f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field public static final g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field public static final h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field public static final i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field public static final j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

.field private static final k:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v1, "OPTIONS"

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v2, "GET"

    invoke-direct {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;-><init>(Ljava/lang/String;)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 3
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v3, "HEAD"

    invoke-direct {v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;-><init>(Ljava/lang/String;)V

    sput-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 4
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v4, "POST"

    invoke-direct {v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;-><init>(Ljava/lang/String;)V

    sput-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 5
    new-instance v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v5, "PUT"

    invoke-direct {v4, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;-><init>(Ljava/lang/String;)V

    sput-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->f:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 6
    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v6, "PATCH"

    invoke-direct {v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;-><init>(Ljava/lang/String;)V

    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->g:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 7
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v7, "DELETE"

    invoke-direct {v6, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;-><init>(Ljava/lang/String;)V

    sput-object v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 8
    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v8, "TRACE"

    invoke-direct {v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;-><init>(Ljava/lang/String;)V

    sput-object v7, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 9
    new-instance v8, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v9, "CONNECT"

    invoke-direct {v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;-><init>(Ljava/lang/String;)V

    sput-object v8, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 10
    new-instance v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;

    const/16 v10, 0x9

    new-array v10, v10, [Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    new-instance v11, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 11
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v11, v10, v0

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 12
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v0, v10, v1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 13
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x2

    aput-object v0, v10, v1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 14
    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v0, v10, v1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 15
    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aput-object v0, v10, v1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 16
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aput-object v0, v10, v1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 17
    invoke-virtual {v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x6

    aput-object v0, v10, v1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 18
    invoke-virtual {v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x7

    aput-object v0, v10, v1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;

    .line 19
    invoke-virtual {v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x8

    aput-object v0, v10, v1

    invoke-direct {v9, v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;-><init>([Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a$a;)V

    sput-object v9, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->k:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 5
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid character in name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->a:Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->a:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object v0
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;)I
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->a:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->a:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
