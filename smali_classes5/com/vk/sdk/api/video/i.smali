.class public final synthetic Lcom/vk/sdk/api/video/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/sdk/api/ApiResponseParser;


# static fields
.field public static final synthetic a:Lcom/vk/sdk/api/video/i;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/video/i;

    invoke-direct {v0}, Lcom/vk/sdk/api/video/i;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/video/i;->a:Lcom/vk/sdk/api/video/i;

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

    invoke-static {p1}, Lcom/vk/sdk/api/video/VideoService;->r(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/video/dto/VideoGetAlbumsByVideoExtendedResponse;

    move-result-object p1

    return-object p1
.end method
