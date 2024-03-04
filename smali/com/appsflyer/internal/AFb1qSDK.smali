.class public final Lcom/appsflyer/internal/AFb1qSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public AFInAppEventParameterName:J

.field public AFInAppEventType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public AFKeystoreWrapper:I

.field public AFLogger:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public afDebugLog:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public afErrorLog:Lcom/appsflyer/internal/AFe1rSDK;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public valueOf:J

.field public values:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILcom/appsflyer/internal/AFe1rSDK;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventType:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1qSDK;->values:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/appsflyer/internal/AFb1qSDK;->valueOf:J

    .line 5
    iput-wide p5, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFInAppEventParameterName:J

    .line 6
    iput p7, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFKeystoreWrapper:I

    .line 7
    iput-object p8, p0, Lcom/appsflyer/internal/AFb1qSDK;->afErrorLog:Lcom/appsflyer/internal/AFe1rSDK;

    .line 8
    iput-object p9, p0, Lcom/appsflyer/internal/AFb1qSDK;->AFLogger:Ljava/lang/String;

    .line 9
    iput-object p10, p0, Lcom/appsflyer/internal/AFb1qSDK;->afDebugLog:Ljava/lang/Throwable;

    return-void
.end method
