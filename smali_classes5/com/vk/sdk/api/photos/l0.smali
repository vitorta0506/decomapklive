.class public final synthetic Lcom/vk/sdk/api/photos/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/sdk/api/ApiResponseParser;


# static fields
.field public static final synthetic a:Lcom/vk/sdk/api/photos/l0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/photos/l0;

    invoke-direct {v0}, Lcom/vk/sdk/api/photos/l0;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/photos/l0;->a:Lcom/vk/sdk/api/photos/l0;

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

    invoke-static {p1}, Lcom/vk/sdk/api/photos/PhotosService;->R(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/photos/dto/PhotosGetAlbumsResponse;

    move-result-object p1

    return-object p1
.end method
