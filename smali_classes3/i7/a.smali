.class public Li7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li7/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Lokhttp3/ResponseBody;",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static d:Li7/a$b;

.field static final e:Lcom/google/gson/Gson;


# instance fields
.field protected a:Ljava/lang/reflect/Type;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithModifiers([I)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Li7/a;->e:Lcom/google/gson/Gson;

    return-void

    :array_0
    .array-data 4
        0x10
        0x80
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Li7/a;->a:Ljava/lang/reflect/Type;

    .line 3
    iput-object p1, p0, Li7/a;->c:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 4
    instance-of p1, p2, Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    check-cast p2, Landroid/content/Context;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Li7/a;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 6
    :cond_0
    instance-of p1, p2, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Ljava/lang/ref/WeakReference;

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Li7/a;->b:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    return-void
.end method

.method private b(ILorg/json/JSONObject;)Z
    .locals 1

    sget-object v0, Li7/a;->d:Li7/a$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Li7/a$b;->checkFreeze(ILorg/json/JSONObject;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
    .locals 11
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    const-string v1, "code"

    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    const/4 v3, -0x1

    .line 2
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    .line 3
    :try_start_0
    iget-object v3, p0, Li7/a;->a:Ljava/lang/reflect/Type;

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 4
    iget-object v3, p0, Li7/a;->a:Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ln7/d;->d(Ljava/lang/reflect/Type;I)Ljava/lang/Class;

    move-result-object v3

    .line 5
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    .line 6
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "json is null"

    const/4 v9, 0x1

    const-string v10, "result"

    if-ne v7, v9, :cond_3

    .line 8
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 12
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v2

    .line 15
    :cond_0
    :try_start_2
    invoke-virtual {v2, v5}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v2, v7}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v2

    .line 18
    :cond_1
    :try_start_3
    sget-object v0, Li7/a;->e:Lcom/google/gson/Gson;

    iget-object v1, p0, Li7/a;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v2, v8}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setMsg(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :goto_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v2

    :cond_3
    const v1, 0x1869e

    if-ne v7, v1, :cond_4

    .line 21
    :try_start_4
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/NativeBridge;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    sget-object v1, Li7/a;->e:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 24
    invoke-virtual {v2, v9}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    .line 25
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 26
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v2

    :cond_4
    const v1, 0x1869f

    if-ne v7, v1, :cond_5

    .line 27
    :try_start_5
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/NativeBridge;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-object v1, Li7/a;->e:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    invoke-virtual {v2, v9}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    .line 31
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 32
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v2

    .line 33
    :cond_5
    :try_start_6
    invoke-direct {p0, v7, v6}, Li7/a;->b(ILorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 34
    invoke-virtual {v2, v7}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 35
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v2

    :cond_6
    const/4 v1, 0x0

    .line 36
    :try_start_7
    iget-object v3, p0, Li7/a;->a:Ljava/lang/reflect/Type;

    invoke-static {v3, v4}, Ln7/d;->d(Ljava/lang/reflect/Type;I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Li7/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v3, "userLookAdvertisement"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_7

    .line 37
    :try_start_8
    sget-object v0, Li7/a;->e:Lcom/google/gson/Gson;

    new-instance v3, Li7/a$a;

    invoke-direct {v3, p0}, Li7/a$a;-><init>(Li7/a;)V

    .line 38
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 39
    invoke-virtual {v0, v5, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    .line 40
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v2, v0

    goto :goto_1

    .line 42
    :catch_0
    :try_start_9
    sget-object v0, Li7/a;->e:Lcom/google/gson/Gson;

    iget-object v1, p0, Li7/a;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    goto :goto_1

    .line 43
    :cond_7
    sget-object v0, Li7/a;->e:Lcom/google/gson/Gson;

    iget-object v1, p0, Li7/a;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v5, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    :goto_1
    if-eqz v1, :cond_8

    goto :goto_2

    .line 44
    :cond_8
    invoke-virtual {v2, v8}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setMsg(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v1, v2

    .line 45
    :goto_2
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 46
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setMsg(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 48
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    move-object v1, v2

    :goto_3
    return-object v1

    :goto_4
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 49
    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Li7/a;->a(Lokhttp3/ResponseBody;)Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    move-result-object p1

    return-object p1
.end method
