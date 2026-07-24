package ir.factory.entryexit.data

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import net.zetetic.database.sqlcipher.SupportFactory
import net.sqlcipher.database.SupportFactory

@Database(entities = [PersonEntity::class, LogEntity::class], version = 1, exportSchema = false)
abstract class AppDatabase : RoomDatabase() {

    abstract fun personDao(): PersonDao
    abstract fun logDao(): LogDao

    companion object {
        @Volatile
        private var INSTANCE: AppDatabase? = null

        const val DB_NAME = "factory_entry_exit.db"

        fun getInstance(context: Context): AppDatabase {
            return INSTANCE ?: synchronized(this) {
                val factory = SupportFactory("FactorySecurePass2026!".toByteArray())
                val instance = Room.databaseBuilder(context, AppDatabase::class.java, DB_NAME)
                    .openHelperFactory(factory)
                    .build()
                INSTANCE = instance
                instance
            }
        }
    }
}
