.class public Lh5/a;
.super Lg5/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh5/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg5/c;-><init>()V

    return-void
.end method

.method public static m()Lh5/a;
    .locals 1

    sget-object v0, Lh5/a$a;->a:Lh5/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)Lg5/d;
    .locals 1

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lh5/a;->l(Ljava/io/Writer;)Lg5/d;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/io/InputStream;)Lg5/f;
    .locals 2

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lh5/a;->d(Ljava/io/Reader;)Lg5/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lg5/f;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lh5/a;->b(Ljava/io/InputStream;)Lg5/f;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p0, v0}, Lh5/a;->d(Ljava/io/Reader;)Lg5/f;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/io/Reader;)Lg5/f;
    .locals 2

    new-instance v0, Lh5/c;

    new-instance v1, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, p0, v1}, Lh5/c;-><init>(Lh5/a;Lcom/google/gson/stream/JsonReader;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lg5/f;
    .locals 1

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lh5/a;->d(Ljava/io/Reader;)Lg5/f;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/io/Writer;)Lg5/d;
    .locals 2

    new-instance v0, Lh5/b;

    new-instance v1, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v1, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, p0, v1}, Lh5/b;-><init>(Lh5/a;Lcom/google/gson/stream/JsonWriter;)V

    return-object v0
.end method
