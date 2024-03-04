.class public final synthetic Lef/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/sdk/api/ApiResponseParser;


# static fields
.field public static final synthetic a:Lef/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lef/a;

    invoke-direct {v0}, Lef/a;-><init>()V

    sput-object v0, Lef/a;->a:Lef/a;

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

    invoke-static {p1}, Lcom/vk/sdk/api/execute/ExecuteService;->a(Lcom/google/gson/JsonElement;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
