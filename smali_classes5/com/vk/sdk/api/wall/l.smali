.class public final synthetic Lcom/vk/sdk/api/wall/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/sdk/api/ApiResponseParser;


# static fields
.field public static final synthetic a:Lcom/vk/sdk/api/wall/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/wall/l;

    invoke-direct {v0}, Lcom/vk/sdk/api/wall/l;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/wall/l;->a:Lcom/vk/sdk/api/wall/l;

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

    invoke-static {p1}, Lcom/vk/sdk/api/wall/WallService;->b(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/wall/dto/WallSearchExtendedResponse;

    move-result-object p1

    return-object p1
.end method