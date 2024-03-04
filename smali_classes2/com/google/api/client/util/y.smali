.class public final Lcom/google/api/client/util/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/y$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private a:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-----BEGIN ([A-Z ]+)-----"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/y;->b:Ljava/util/regex/Pattern;

    const-string v0, "-----END ([A-Z ]+)-----"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/y;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/google/api/client/util/y;->a:Ljava/io/BufferedReader;

    return-void
.end method

.method public static b(Ljava/io/Reader;Ljava/lang/String;)Lcom/google/api/client/util/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/api/client/util/y;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/y;-><init>(Ljava/io/Reader;)V

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/api/client/util/y;->d(Ljava/lang/String;)Lcom/google/api/client/util/y$a;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/util/y;->a()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/google/api/client/util/y;->a()V

    .line 4
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/util/y;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public c()Lcom/google/api/client/util/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/util/y;->d(Ljava/lang/String;)Lcom/google/api/client/util/y$a;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/google/api/client/util/y$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    .line 1
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/api/client/util/y;->a:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    if-nez v2, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v4

    const-string v2, "missing end tag (%s)"

    .line 2
    invoke-static {p1, v2, v1}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_2
    if-nez v1, :cond_4

    .line 3
    sget-object v4, Lcom/google/api/client/util/y;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    goto :goto_0

    .line 8
    :cond_4
    sget-object v6, Lcom/google/api/client/util/y;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 10
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v2, v3, v5

    const-string p1, "end tag (%s) doesn\'t match begin tag (%s)"

    .line 12
    invoke-static {v0, p1, v3}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    new-instance p1, Lcom/google/api/client/util/y$a;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/google/api/client/util/y$a;-><init>(Ljava/lang/String;[B)V

    return-object p1

    .line 14
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
