.class public final synthetic Lcom/facebook/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookSdk$GraphRequestCreator;


# static fields
.field public static final synthetic a:Lcom/facebook/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/g;

    invoke-direct {v0}, Lcom/facebook/g;-><init>()V

    sput-object v0, Lcom/facebook/g;->a:Lcom/facebook/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/facebook/FacebookSdk;->i(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method
