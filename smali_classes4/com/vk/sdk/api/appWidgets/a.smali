.class public final synthetic Lcom/vk/sdk/api/appWidgets/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/sdk/api/ApiResponseParser;


# static fields
.field public static final synthetic a:Lcom/vk/sdk/api/appWidgets/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/sdk/api/appWidgets/a;

    invoke-direct {v0}, Lcom/vk/sdk/api/appWidgets/a;-><init>()V

    sput-object v0, Lcom/vk/sdk/api/appWidgets/a;->a:Lcom/vk/sdk/api/appWidgets/a;

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

    invoke-static {p1}, Lcom/vk/sdk/api/appWidgets/AppWidgetsService;->a(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/appWidgets/dto/AppWidgetsPhoto;

    move-result-object p1

    return-object p1
.end method
