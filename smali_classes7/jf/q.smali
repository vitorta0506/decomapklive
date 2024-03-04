.class public final synthetic Ljf/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/sdk/api/ApiResponseParser;


# static fields
.field public static final synthetic a:Ljf/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljf/q;

    invoke-direct {v0}, Ljf/q;-><init>()V

    sput-object v0, Ljf/q;->a:Ljf/q;

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

    invoke-static {p1}, Lcom/vk/sdk/api/newsfeed/NewsfeedService;->i(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/newsfeed/dto/NewsfeedGetRecommendedResponse;

    move-result-object p1

    return-object p1
.end method
