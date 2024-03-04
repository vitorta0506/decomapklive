.class public final synthetic Lif/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/sdk/api/ApiResponseParser;


# static fields
.field public static final synthetic a:Lif/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lif/o;

    invoke-direct {v0}, Lif/o;-><init>()V

    sput-object v0, Lif/o;->a:Lif/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseResponse(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/vk/sdk/api/market/MarketService;->w(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/market/dto/MarketGetOrdersResponse;

    move-result-object p1

    return-object p1
.end method
