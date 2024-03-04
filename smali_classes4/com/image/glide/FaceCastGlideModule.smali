.class public Lcom/image/glide/FaceCastGlideModule;
.super Lq0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/Registry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 2
    new-instance p2, Lic/e;

    invoke-direct {p2}, Lic/e;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 3
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 4
    const-class p2, Lj0/g;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lcom/bumptech/glide/integration/okhttp3/b$a;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/integration/okhttp3/b$a;-><init>(Lokhttp3/Call$Factory;)V

    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/Registry;->r(Ljava/lang/Class;Ljava/lang/Class;Lj0/o;)Lcom/bumptech/glide/Registry;

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lh0/d;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getGlideCacheDirV2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-wide/32 v1, 0x5000000

    invoke-direct {v0, p1, v1, v2}, Lh0/d;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/d;->b(Lh0/a$a;)Lcom/bumptech/glide/d;

    return-void
.end method
