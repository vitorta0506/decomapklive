.class public final synthetic Lif/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/sdk/api/ApiResponseParser;


# static fields
.field public static final synthetic a:Lif/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lif/z;

    invoke-direct {v0}, Lif/z;-><init>()V

    sput-object v0, Lif/z;->a:Lif/z;

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

    invoke-static {p1}, Lcom/vk/sdk/api/market/MarketService;->G(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/market/dto/MarketGetByIdResponse;

    move-result-object p1

    return-object p1
.end method
