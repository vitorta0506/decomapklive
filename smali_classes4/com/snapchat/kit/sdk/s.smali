.class public final Lcom/snapchat/kit/sdk/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lcom/snapchat/kit/sdk/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/kit/sdk/k;

.field private final b:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lbe/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lce/c;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lie/j;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lge/f;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lfi/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;",
            ">;",
            "Lfi/a<",
            "Lbe/d;",
            ">;",
            "Lfi/a<",
            "Lce/c;",
            ">;",
            "Lfi/a<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Lfi/a<",
            "Lie/j;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;",
            "Lfi/a<",
            "Lge/f;",
            ">;",
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/s;->a:Lcom/snapchat/kit/sdk/k;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/s;->b:Lfi/a;

    .line 4
    iput-object p3, p0, Lcom/snapchat/kit/sdk/s;->c:Lfi/a;

    .line 5
    iput-object p4, p0, Lcom/snapchat/kit/sdk/s;->d:Lfi/a;

    .line 6
    iput-object p5, p0, Lcom/snapchat/kit/sdk/s;->e:Lfi/a;

    .line 7
    iput-object p6, p0, Lcom/snapchat/kit/sdk/s;->f:Lfi/a;

    .line 8
    iput-object p7, p0, Lcom/snapchat/kit/sdk/s;->g:Lfi/a;

    .line 9
    iput-object p8, p0, Lcom/snapchat/kit/sdk/s;->h:Lfi/a;

    .line 10
    iput-object p9, p0, Lcom/snapchat/kit/sdk/s;->i:Lfi/a;

    .line 11
    iput-object p10, p0, Lcom/snapchat/kit/sdk/s;->j:Lfi/a;

    return-void
.end method

.method public static a(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)Leg/c;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/k;",
            "Lfi/a<",
            "Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;",
            ">;",
            "Lfi/a<",
            "Lbe/d;",
            ">;",
            "Lfi/a<",
            "Lce/c;",
            ">;",
            "Lfi/a<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Lfi/a<",
            "Lie/j;",
            ">;",
            "Lfi/a<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;",
            "Lfi/a<",
            "Lge/f;",
            ">;",
            "Lfi/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;)",
            "Leg/c<",
            "Lcom/snapchat/kit/sdk/f;",
            ">;"
        }
    .end annotation

    new-instance v11, Lcom/snapchat/kit/sdk/s;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/snapchat/kit/sdk/s;-><init>(Lcom/snapchat/kit/sdk/k;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;Lfi/a;)V

    return-object v11
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/s;->a:Lcom/snapchat/kit/sdk/k;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/s;->b:Lfi/a;

    .line 2
    invoke-interface {v1}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/s;->c:Lfi/a;

    .line 3
    invoke-interface {v2}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbe/d;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/s;->d:Lfi/a;

    .line 4
    invoke-interface {v3}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lce/c;

    iget-object v4, p0, Lcom/snapchat/kit/sdk/s;->e:Lfi/a;

    .line 5
    invoke-interface {v4}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokhttp3/OkHttpClient;

    iget-object v5, p0, Lcom/snapchat/kit/sdk/s;->f:Lfi/a;

    .line 6
    invoke-static {v5}, Leg/b;->a(Lfi/a;)Ldg/a;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/kit/sdk/s;->g:Lfi/a;

    .line 7
    invoke-interface {v6}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/Gson;

    iget-object v7, p0, Lcom/snapchat/kit/sdk/s;->h:Lfi/a;

    .line 8
    invoke-static {v7}, Leg/b;->a(Lfi/a;)Ldg/a;

    move-result-object v7

    iget-object v8, p0, Lcom/snapchat/kit/sdk/s;->i:Lfi/a;

    .line 9
    invoke-interface {v8}, Lfi/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lge/f;

    iget-object v9, p0, Lcom/snapchat/kit/sdk/s;->j:Lfi/a;

    .line 10
    invoke-static {v9}, Leg/b;->a(Lfi/a;)Ldg/a;

    move-result-object v9

    .line 11
    invoke-virtual/range {v0 .. v9}, Lcom/snapchat/kit/sdk/k;->f(Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;Lbe/d;Lce/c;Lokhttp3/OkHttpClient;Ldg/a;Lcom/google/gson/Gson;Ldg/a;Lge/f;Ldg/a;)Lcom/snapchat/kit/sdk/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 12
    invoke-static {v0, v1}, Leg/d;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/f;

    return-object v0
.end method
