import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.pfuertes.service.dev"
            resValue(type = "string", name = "app_name", value = "Riverpod Scaffold-Dev")
        }
        create("pre") {
            dimension = "flavor-type"
            applicationId = "com.pfuertes.service.pre"
            resValue(type = "string", name = "app_name", value = "Riverpod Scaffold-Pre")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.pfuertes.service"
            resValue(type = "string", name = "app_name", value = "Riverpod Scaffold")
        }
    }
}