.class public final synthetic Lye/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/sdk/api/ApiResponseParser;


# static fields
.field public static final synthetic a:Lye/e;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lye/e;

    invoke-direct {v0}, Lye/e;-><init>()V

    sput-object v0, Lye/e;->a:Lye/e;

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

    invoke-static {p1}, Lcom/vk/sdk/api/account/AccountService;->n(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/account/dto/AccountPushSettings;

    move-result-object p1

    return-object p1
.end method
