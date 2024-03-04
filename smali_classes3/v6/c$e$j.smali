.class Lv6/c$e$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv6/c$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field private static final a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lv6/c$e$j;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic a()Lcom/google/gson/Gson;
    .locals 1

    sget-object v0, Lv6/c$e$j;->a:Lcom/google/gson/Gson;

    return-object v0
.end method
